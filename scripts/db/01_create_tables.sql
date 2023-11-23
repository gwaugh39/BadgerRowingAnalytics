USE rowdb;

-- Contains information about athletes
CREATE TABLE Athletes (
    athleteID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    startYear INT,
    endYear INT,
    isActive BOOLEAN NOT NULL,
    PRIMARY KEY (athleteID)
);

-- Contains information about the different types of tests
CREATE TABLE TestTypes (
    testTypeID INT AUTO_INCREMENT NOT NULL,
    testName VARCHAR(50) NOT NULL,
    testDescription VARCHAR(200),
    forTime BOOLEAN NOT NULL,
    PRIMARY KEY (testTypeID)
);

-- Contains information about individual tests
CREATE TABLE Tests (
    testID INT AUTO_INCREMENT NOT NULL,
    testTypeID INT NOT NULL,
    testDate VARCHAR(20) NOT NULL,
    testYear INT,
    testIteration INT,
    PRIMARY KEY (testID),
    FOREIGN KEY (testTypeID) REFERENCES TestTypes(testTypeID)
);

-- Contains information about individual test performances
CREATE TABLE Performances (
    performanceID INT AUTO_INCREMENT NOT NULL,
    athleteID INT NOT NULL,
    testID INT NOT NULL,
    performanceTime FLOAT NOT NULL,
    performanceDistance INT NOT NULL,
    isPR BOOLEAN NOT NULL,
    PRIMARY KEY (performanceID),
    FOREIGN KEY (athleteID) REFERENCES Athletes(athleteID),
    FOREIGN KEY (testID) REFERENCES Tests(testID)
);

-- Holds information about individual athlete PRs
CREATE TABLE PersonalRecords (
    PRID INT AUTO_INCREMENT NOT NULL,
    athleteID INT NOT NULL,
    testTypeID INT NOT NULL,
    testTime FLOAT NOT NULL,
    testDistance INT NOT NULL,
    PRIMARY KEY (PRID),
    FOREIGN KEY (athleteID) REFERENCES Athletes(athleteID),
    FOREIGN KEY (testTypeID) REFERENCES  TestTypes(testTypeID)
);