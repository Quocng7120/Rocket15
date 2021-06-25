create database Quoc_01;
use Quoc_01;
create table Department (
DepartmentID int,
DepartmentName varchar(50)
);

create table Position (
PositionID int,
PositionName varchar(50)
);

create table `Account` (
AccountID int,
Email varchar(50),
Username varchar(50),
DepartmentID int,
CreatDate date
);

create table `Group` (
GroupID int,
GroupName varchar(50),
CreatorID int,
CreateDate date
);

create table GroupAccount (
GroupID int,
AccountID int,
JoinDate date
);

create table TypeQuestion (
TypeID int,
TypeName varchar(50)
);

create table CategoryQuestion (
CategoryID int,
CategoryName varchar(255)
);

create table Question (
QuestionID int,
Content varchar(255),
CategoryID int,
TypeID int,
CreatorID int,
CreateDate date
);

create table Answer (
AnswerID int,
Content varchar(255),
QuestionID int,
isCorrect boolean
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

create table ExamQuestion (
  ExamID int,
  QuestionID int
  );
  
