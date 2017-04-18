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

**/
DROP TRIGGER IF EXISTS seriesAfterInsert;
DELIMITER //
CREATE TRIGGER seriesAfterInsert
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
		foreign key(charID) REFERENCES Characters(charID),
	DROP INDEX charEarth_uq,
    ADD UNIQUE KEY charEarth_uq(charID, earthID),
	DROP COLUMN charName;

-- ------------------------------------------------------------------------------------
/**

UPDATE THE TIMETABLE TO INSERT CHARID AND SERIESID
DROP CHARNAME -> NOT NECESSARY FOR THE MAPPING

**/
UPDATE Timetable
	SET Timetable.charID = (SELECT charID FROM Characters
							WHERE Characters.charName=Timetable.charName
                            LIMIT 1)
	WHERE Timetable.issueID is not null;



UPDATE Timetable
	SET Timetable.seriesID = (SELECT Series.seriesID FROM Series
								INNER JOIN Issue
                                ON Issue.seriesName=Series.seriesName
                                WHERE Timetable.issueID=Issue.issueID AND
								Issue.seriesName=Series.seriesName)
	WHERE Timetable.issueID is not null;
    
ALTER TABLE Timetable
	DROP COLUMN charName;

ALTER TABLE Issue
	DROP COLUMN seriesName;
-- ------------------------------------------------------------------------------------

/**

DELETING AN ISSUE 
DO WE WANT A TRIGGER THAT DELETES ISSUES FROM THE SERIES NUM?

**/
-- DROP TRIGGER IF EXISTS onIssueDelete;
-- DELIMITER //
-- CREATE TRIGGER onIssueDelete
-- 	AFTER DELETE ON Issue
--     FOR EACH ROW
--     BEGIN
-- 		SET @issSerID = (SELECT Series.seriesName FROM Series
-- 							INNER JOIN Timetable
-- 							ON Series.seriesID=Timetable.seriesID
-- 							WHERE Timetable.issueID=OLD.issueID
-- 							LIMIT 1);
--     
-- 		UPDATE Series SET numOfIssues = numOfIssues - 1
-- 			WHERE @issSerID=Series.seriesName
--             AND seriesID is not null;
--     
--     END //
-- DELIMITER ;





