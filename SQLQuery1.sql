CREATE DATABASE [VacationManager]

CREATE TABLE Projects
(
ProjectID int PRIMARY KEY,
[Name] nvarchar(64),
[Description] nvarchar(64),
)

CREATE TABLE Teams
(
TeamID int PRIMARY KEY,
[Name] nvarchar(64),
ProjectID int,
FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
)

CREATE TABLE Users
(
UserID int PRIMARY KEY,
[Name] nvarchar(64),
[Password] nvarchar(64),
FirstName nvarchar(64),
LastName nvarchar(64),
[Role] nvarchar(64),
TeamID int,
FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
)

CREATE TABLE Vacations
(
UserID int PRIMARY KEY,
DateFrom datetime2,
DateTo datetime2,
DataCreation datetime2,
IsHalfDay bit,
Accepted bit,
UserRequested int,
FOREIGN KEY (UserRequested) REFERENCES Users(UserID)
)