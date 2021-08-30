USE employeemanagerappdb;

CREATE TABLE Employee(
	EmployeeID int PRIMARY KEY,
	FirstName varchar(50) NULL,
	LastName varchar(50) NULL,
	Title varchar(50) NULL,
	BirthDate date NULL,
	HireDate date NULL,
	Notes varchar(500) NULL);

CREATE TABLE EmployeeAcademicDetails(
	Id int PRIMARY KEY,
	EmployeeID int NULL,
	Qualification varchar(50) NULL,
	UniversityName varchar(50) NULL,
	YearOfPassing int NULL,
	PercentageScored int NULL);

CREATE TABLE EmployeeAddressDetails(
	Id int PRIMARY KEY,
	EmployeeID int NULL,
	DoorNumber varchar(50) NULL,
	ColonyName varchar(50) NULL,
	City varchar(50) NULL,
	State varchar(50) NULL,
	PostalCode varchar(50) NULL,
	AddressType varchar(50) NULL);

CREATE TABLE EmployeeOtherParticulars(
	EmployeeID int Not NULL,
	BloodGroup varchar(50) NULL,
	MobileNumber varchar(50) NULL,
	MaritalStatus varchar(50) NULL,
	Gender varchar(50) NULL,
	AlternateNumber varchar(50) NULL,
	EarliestDOJ date NULL,
	Id int PRIMARY KEY,
	CurrentSalary int NULL);
	
CREATE TABLE EmployeeSalaryBreakUpDetails(
	Id int PRIMARY KEY,
	EmployeeID int NULL,
	SalaryComponentName varchar(50) NULL,
	SalaryComponentAmount int NULL);
	
CREATE TABLE EmployeeWorkExperienceDetails(
	Id int PRIMARY KEY,
	EmployeeID int NULL,
	OrganizationName varchar(50) NULL,
	Designation varchar(50) NULL,
	FromDate date NULL,
	ToDate date NULL,
	CoreTechnologies varchar(50) NULL);






INSERT into EmployeeOtherParticulars (EmployeeID, BloodGroup, MobileNumber, MaritalStatus, Gender, AlternateNumber, EarliestDOJ, Id, CurrentSalary) VALUES (4, N'A+', N'12345567', N'Married', N'M', N'78654323', CAST(N'2020-01-01' AS Date), 1, 50000);



INSERT into EmployeeWorkExperienceDetails (Id, EmployeeID, OrganizationName, Designation, FromDate, ToDate, CoreTechnologies) VALUES (1, 4, N'ABC Ltd', N'Developer', CAST(N'1990-01-01' AS Date), CAST(N'1993-01-01' AS Date), N'C#,SQL SERVER');

INSERT into EmployeeWorkExperienceDetails (Id, EmployeeID, OrganizationName, Designation, FromDate, ToDate, CoreTechnologies) VALUES (2, 4, N'PQR Ltd', N'Sr Developer', CAST(N'1993-01-02' AS Date), CAST(N'1995-01-01' AS Date), N'PHP');

INSERT into EmployeeWorkExperienceDetails (Id, EmployeeID, OrganizationName, Designation, FromDate, ToDate, CoreTechnologies) VALUES (3, 4, N'XYZ Ltd', N'Team Leader', CAST(N'1995-01-01' AS Date), CAST(N'2010-01-01' AS Date), N'ASP.NET');

INSERT into EmployeeWorkExperienceDetails (Id, EmployeeID, OrganizationName, Designation, FromDate, ToDate, CoreTechnologies) VALUES (4, 4, N'EFG Ltd', N'Project Manager', CAST(N'2010-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'ASP.NET Core');



INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (1, 4, N'Basic Salary', 5000);

INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (2, 4, N'HRA', 2000);

INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (3, 4, N'CA', 3000);

INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (4, 4, N'MA', 4000);

INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (5, 4, N'FA', 3000);

INSERT into EmployeeSalaryBreakUpDetails (Id, EmployeeID, SalaryComponentName, SalaryComponentAmount) VALUES (6, 4, N'GA', 4000);


INSERT into EmployeeAcademicDetails (Id, EmployeeID, Qualification, UniversityName, YearOfPassing, PercentageScored) VALUES (1, 4, N'MS In Computers', N'ABC University', 2010, 85);

INSERT into EmployeeAcademicDetails (Id, EmployeeID, Qualification, UniversityName, YearOfPassing, PercentageScored) VALUES (2, 4, N'Post Graduation', N'ABC University', 2008, 98);

INSERT into EmployeeAcademicDetails (Id, EmployeeID, Qualification, UniversityName, YearOfPassing, PercentageScored) VALUES (3, 4, N'Graduation', N'ABC University', 2005, 80);



INSERT into EmployeeAddressDetails (Id, EmployeeID, DoorNumber, ColonyName, City, State, PostalCode, AddressType) VALUES (1, 4, N'4-85', N'ABC Colony', N'Sample City', N'Sample State', N'500012', N'Permanent');

INSERT into EmployeeAddressDetails (Id, EmployeeID, DoorNumber, ColonyName, City, State, PostalCode, AddressType) VALUES (2, 4, N'4-86', N'PQR Colony', N'Another City', N'Another State', N'500013', N'Temporary');
