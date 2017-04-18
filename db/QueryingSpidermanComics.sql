USE spidermanComics;

SELECT * FROM Issue;
SELECT * FROM Series;
SELECT * FROM Characters;
SELECT * FROM CharactersEarth;
SELECT * FROM Timetable;

-- -------------------------------------------------------------------------------------
/**

CREATING A SERIES RECORD
IF SERIES IS CREATED, UPDATE THE NUMOFISSUES AND RELEASE/END DATES

AFTER DATA IS IMPORTED, DROP THIS TRIGGER
THE DATA IS NOT CONSISTENT ANYMORE
ISSUE TABLE DOES NOT CONTAIN A SERIESNAME COLUMN ANYMORE, IT HAS A SERIESID NOW

**/
DROP TRIGGER IF EXISTS AfterIssueInsert;
DELIMITER //
CREATE TRIGGER AfterIssueInsert
	AFTER INSERT ON Issue
    FOR EACH ROW
    BEGIN
    
		IF NEW.seriesName NOT IN (SELECT seriesName FROM Series) THEN        
            INSERT INTO Series(seriesName, numOfIssues, releaseDate, endDate)
					VALUES(new.seriesName, 1, NEW.releaseDate, NEW.releaseDate);
		ELSE
			UPDATE Series SET numOfIssues = numOfIssues+ 1
 				WHERE NEW.seriesName=Series.seriesName;
                
			SET @sRD = (SELECT Series.releaseDate FROM Series
					INNER JOIN Issue ON Series.seriesName=NEW.seriesName
					WHERE NEW.seriesName=Series.seriesName
                    LIMIT 1);
			SET @sED = (SELECT Series.endDate FROM Series
					INNER JOIN Issue ON Series.seriesName=NEW.seriesName
					WHERE NEW.seriesName=Series.seriesName
                    LIMIT 1);
			
            IF @sRD > NEW.releaseDate THEN
				UPDATE Series
					SET Series.releaseDate = NEW.releaseDate
					WHERE NEW.releaseDate < @sRD AND NEW.seriesName=Series.seriesName;
			ELSEIF @sED < NEW.releaseDate THEN
				UPDATE Series
					SET Series.endDate = NEW.releaseDate
					WHERE NEW.releaseDate > @sED AND NEW.seriesName=Series.seriesName;
			END IF;
		END IF;
        
	END //
DELIMITER ;

-- -------------------------------------------------------------------------------------
/**

CALL THIS PROCEDURE AFTER DATA IMPORT

**/

DELIMITER //
CREATE PROCEDURE AfterDataImport()
	BEGIN
/**

THIS IS AFTER INSERTION OF CHARACTERS AND CHARACTERSEARTH

SET ALL THE CHARID IN CHARACTERSEARTH SINCE THEY WERE NULL FROM INITIALIZATION

**/
UPDATE CharactersEarth 
	SET CharactersEarth.charID = (SELECT charID FROM Characters
									WHERE charName=CharactersEarth.charName)
	WHERE CharactersEarth.charName is not null;

/**

ADD THE FOREIGN KEY RELATIONSHIP WITH CHARID FROM CHARACTERS
DROP THE UNIQUE KEY
ADD THE REVISED UNIQUE KEY 
DROP THE CHARNAME COLUMN SINCE YOU HAVE CHARID WHICH LINKS TO CHARACTERS

**/
ALTER TABLE CharactersEarth
	ADD CONSTRAINT charEarth_fk
		FOREIGN KEY(charID) 
        REFERENCES Characters(charID)
        ON DELETE CASCADE,
	DROP INDEX charEarth_uq,
    ADD UNIQUE KEY charEarth_uq(charID, earthID),
	DROP COLUMN charName;

/**

UPDATE THE TIMETABLE TO INSERT CHARID AND SERIESID
DROP CHARNAME -> NOT NECESSARY FOR THE MAPPING

**/
UPDATE Timetable
	SET Timetable.charID = (SELECT charID FROM Characters
							WHERE Characters.charName=Timetable.charName
                            LIMIT 1)
	WHERE Timetable.issueID is not null;

ALTER TABLE Timetable
	DROP COLUMN charName;    

/**

REPLACE seriesName WITH seriesID

**/
ALTER TABLE Issue
	ADD COLUMN seriesID INT AFTER seriesName;

SET SQL_SAFE_UPDATES = 0;
UPDATE Issue
	SET Issue.seriesID = (SELECT Series.seriesID FROM Series
							WHERE Series.seriesName=Issue.seriesName
                            LIMIT 1)
	WHERE Issue.issueID is not null;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Issue
	DROP COLUMN seriesName,
    ADD CONSTRAINT issueSeries_fk
		FOREIGN KEY(seriesID) 
        REFERENCES Series(seriesID)
        ON DELETE CASCADE;

/**

ADD seriesID TO TIMETABLE

**/
UPDATE Timetable
	SET Timetable.seriesID = (SELECT Issue.seriesID FROM Issue
                                WHERE Timetable.issueID=Issue.issueID)
	WHERE Timetable.issueID is not null;
    
DROP TRIGGER IF EXISTS AfterIssueInsert;
END //
DELIMITER ;

CALL AfterDataImport;
DROP PROCEDURE AfterDataImport;
-- ------------------------------------------------------------------------------------

/**

AFTER INSERT ON ISSUE

**/
DROP TRIGGER IF EXISTS issueAfterInsert;
DELIMITER //
CREATE TRIGGER issueAfterInsert
	AFTER INSERT ON Issue
    FOR EACH ROW
    BEGIN
		UPDATE Series SET numOfIssues = numOfIssues+ 1
			WHERE NEW.seriesID=Series.seriesID;
                
		SET @sRD = (SELECT Series.releaseDate FROM Series
						INNER JOIN Issue 
						ON Series.seriesID=NEW.seriesID
						WHERE NEW.seriesID=Series.seriesID
						LIMIT 1);
            
		SET @sED = (SELECT Series.endDate FROM Series
						INNER JOIN Issue 
						ON Series.seriesID=NEW.seriesID
						WHERE NEW.seriesID=Series.seriesID
						LIMIT 1);
			
        IF @sRD > NEW.releaseDate THEN
			UPDATE Series
				SET Series.releaseDate = NEW.releaseDate
				WHERE NEW.releaseDate < @sRD AND NEW.seriesID=Series.seriesID;
                
		ELSEIF @sED < NEW.releaseDate THEN
			UPDATE Series
				SET Series.endDate = NEW.releaseDate
				WHERE NEW.releaseDate > @sED AND NEW.seriesID=Series.seriesID;
		END IF;
        
        -- SET @charList = (SELECT charID FROM Timetable WHERE Timetable.issueID=OLD.issueID
        
	END //
DELIMITER ;

-- ------------------------------------------------------------------------------------

/**

AFTER DELETE ON ISSUE

**/
DROP TRIGGER IF EXISTS afterIssueDelete;
DELIMITER //
CREATE TRIGGER afterIssueDelete
AFTER DELETE ON Issue
FOR EACH ROW
BEGIN
	-- UPDATE THE NUMBER OF ISSUES IN A SERIES
	UPDATE Series SET numOfIssues = numOfIssues- 1
		WHERE OLD.seriesID=Series.seriesID;
        
	-- IF THE NUMOFISSUES IS 0, DELETE THE SERIES ENTIRELY
	IF (SELECT numOfIssues FROM Series WHERE OLD.seriesID=Series.seriesID LIMIT 1) < 1 THEN
		DELETE FROM Series WHERE seriesID=OLD.seriesID ORDER BY seriesID LIMIT 1;
    END IF;
    
    
	SET @sRD = (SELECT Series.releaseDate FROM Series
				INNER JOIN Issue 
				ON Series.seriesID=OLD.seriesID
				WHERE OLD.seriesID=Series.seriesID
				LIMIT 1);
            
	SET @sED = (SELECT Series.endDate FROM Series
				INNER JOIN Issue 
				ON Series.seriesID=OLD.seriesID
				WHERE OLD.seriesID=Series.seriesID
				LIMIT 1);
	-- CHECK THAT THE RELEASE DATE IS CORRECT
    IF @sRD < OLD.releaseDate THEN
		UPDATE Series
			SET Series.releaseDate = OLD.releaseDate
			WHERE OLD.releaseDate < @sRD AND OLD.seriesID=Series.seriesID;
                
	ELSEIF @sED > OLD.releaseDate THEN
		UPDATE Series
			SET Series.endDate = OLD.releaseDate
			WHERE OLD.releaseDate > @sED AND OLD.seriesID=Series.seriesID;
	END IF;
END //
DELIMITER ;

-- ------------------------------------------------------------------------------------

/**

UPDATE A SERIES WITH GIVEN VALUES

**/
DROP PROCEDURE IF EXISTS UpdateSeries;
DELIMITER //
CREATE PROCEDURE UpdateSeries(IN serID INT, IN serName VARCHAR(100), IN relDate DATE, IN endDa DATE)
	BEGIN
		UPDATE Series
			SET Series.seriesName = serName
            WHERE Series.seriesID=serID;
		UPDATE Series
			SET Series.releaseDate = relDate
            WHERE Series.seriesID=serID;
		UPDATE Series
			SET Series.endDate = endDa
            WHERE Series.seriesID=serID;
	END //
DELIMITER ;
-- ------------------------------------------------------------------------------------

/**

UPDATE AN ISSUE WITH GIVEN VALUES

**/
DROP PROCEDURE IF EXISTS UpdateIssue;
DELIMITER //
CREATE PROCEDURE UpdateIssue(IN issID INT, IN issName VARCHAR(100), IN issNum DECIMAL, IN relDate DATE, IN URL VARCHAR(100))
	BEGIN
		UPDATE Issue
			SET issueName = issName
            WHERE issueID=issID;
		UPDATE Issue
			SET issueNum = issNum
            WHERE issueID=issID;
		UPDATE Issue
			SET releaseDate = relDate
            WHERE issueID=issID;
		UPDATE Issue
			SET imageURL = URL
            WHERE issueID=issID;
	END //
DELIMITER ;
-- ------------------------------------------------------------------------------------

/**

AFTER DELETE ON SERIES

**/
DROP TRIGGER IF EXISTS afterSeriesDelete;
DELIMITER //
CREATE TRIGGER afterSeriesDelete
	AFTER DELETE ON Series
    FOR EACH ROW
    BEGIN
		DELETE FROM Issue 
			WHERE OLD.seriesID=Issue.seriesID 
			ORDER BY issueID
			LIMIT 1;
    END //
DELIMITER ;

-- ------------------------------------------------------------------------------------

-- create a function to delete series - okay
-- 	then deletes all issues associated
-- 	see if you can delete characters that are only in that series
-- if you delete an issue decrement series numOfIssues - CHECK
-- drop trigger, then create new trigger that checks dates - CHECK

