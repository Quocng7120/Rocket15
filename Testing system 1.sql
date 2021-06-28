create database Quoc_01;
use Quoc_01;
CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Position (
    PositionID INT,
    PositionName VARCHAR(50)
);

CREATE TABLE `Account` (
    AccountID INT,
    Email VARCHAR(50),
    Username VARCHAR(50),
    DepartmentID INT,
    CreatDate DATE
);

CREATE TABLE `Group` (
    GroupID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATE
);

CREATE TABLE TypeQuestion (
    TypeID INT,
    TypeName VARCHAR(50)
);

alter table TypeQuestion
change column TypeID TypeID int not null primary key;

CREATE TABLE CategoryQuestion (
    CategoryID INT,
    CategoryName VARCHAR(255)
);

alter table CategoryQuestion
change column CategoryID CategoryID int not null primary key;

CREATE TABLE Question (
    QuestionID INT,
    Content VARCHAR(255),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE
);

alter table Question
change column QuestionID QuestionID int not null primary key;

alter table Question
change column CategoryID CategoryID int not null,
add foreign key (`CategoryID`) References `CategoryQuestion` (`CategoryID`);

alter table Question
change column TypeID TypeID int not null,
add foreign key (`TypeID`) References `TypeQuestion` (`TypeID`);

alter table Question
change column CreateDate CreateDate timestamp;

CREATE TABLE Answer (
    AnswerID INT,
    Content VARCHAR(255),
    QuestionID INT,
    isCorrect BOOLEAN
);

CREATE TABLE exam (
    ExamID INT NOT NULL,
    `Code` VARCHAR(10) NULL,
    Title VARCHAR(255) NULL,
    CategoryID INT NULL,
    Duration DATE NULL,
    CreatorID INT NULL,
    CreateDate DATE NULL
);

CREATE TABLE ExamQuestion (
    ExamID INT,
    QuestionID INT
);

alter table position
change column  PositionID PositionID int;

alter table Department
change column  DepartmentID DepartmentID int not null primary key;

alter table `Account`
change column  AccountID AccountID int not null primary key;

alter table `Account`
change column DepartmentID DepartmentID int not null,
add foreign key (`DepartmentID`) References Department (`DepartmentID`);

alter table `Account`
change column PositionID PositionID int not null,
add foreign key (`PositionID`) References Position (`PositionID`);

alter table `Group`
change column  GroupID GroupID int not null primary key;

alter table GroupAccount
change column GroupID GroupID int not null,
add foreign key (`GroupID`) References `Group` (`GroupID`);

alter table `GroupAccount`
change column AccountID AccountID int not null,
add foreign key (`AccountID`) References `Account` (`AccountID`);




  
