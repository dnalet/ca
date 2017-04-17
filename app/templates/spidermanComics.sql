DROP DATABASE IF EXISTS spidermanComics;
CREATE DATABASE spidermanComics;
USE spidermanComics;

CREATE TABLE IF NOT EXISTS Issue (
	issueName		VARCHAR(100),
    issueNum		DECIMAL,
    seriesName		VARCHAR(100), 
    releaseDate		DATE,
    imageURL		VARCHAR(500),
    issueID			INT				AUTO_INCREMENT,
    CONSTRAINT issue_pk
		PRIMARY KEY (issueID)
);

CREATE TABLE IF NOT EXISTS Series (
	seriesName		VARCHAR(100),
    numOfIssues		INT,
    releaseDate		DATE,
    endDate			DATE,
    seriesID		INT				AUTO_INCREMENT,
    CONSTRAINT series_pk
		PRIMARY KEY (seriesID)
);

CREATE TABLE IF NOT EXISTS Characters (
	charName		VARCHAR(100)	UNIQUE,
    charID			INT				AUTO_INCREMENT,
    CONSTRAINT char_pk
		PRIMARY KEY (charID)
);

CREATE TABLE IF NOT EXISTS CharactersEarth (
     earthID		VARCHAR(100),
     charName		VARCHAR(100),
     charID			INT,
	 CONSTRAINT charEarth_uq
		UNIQUE (charName, earthID)
);

CREATE TABLE IF NOT EXISTS Timetable (
 	 seriesID		INT,
     charID			INT,
     charName		VARCHAR(100),
     typeOfChar		ENUM('Protagonist', 'Antagonist', 'Supporting'),
     issueID		INT,
     timeID			INT 	auto_increment,
     CONSTRAINT timetable_pk
		PRIMARY KEY (timeID),
     CONSTRAINT timetableSeries_fk
 		FOREIGN KEY (seriesID)
         REFERENCES Series(seriesID)
         ON DELETE RESTRICT,
	 CONSTRAINT timetableChar_fk
 		FOREIGN KEY (charID)
         REFERENCES Characters(charID)
         ON DELETE CASCADE, # look in to if you can delete an instance through major deletion
	 CONSTRAINT timetableIssue_fk
		FOREIGN KEY (issueID)
		 REFERENCES Issue(issueID)
         ON DELETE CASCADE
);