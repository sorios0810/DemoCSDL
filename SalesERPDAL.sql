-- TAO CSDL SalesERPOAL --
CREATE DATABASE SalesERPDAL
-- SU DUNG CSOL SalesERPOAL
USE SalesERPDAL
GO

-----------------------------
-- TABLES CSDL SalesERPOAL --
-----------------------------
CREATE TABLE DEPARTMENT
(
    DepartmentID		INT				IDENTITY(1,1),
    DepartmentName		NVARCHAR(50)	NOT NULL,
    Location			NVARCHAR(50)	NOT NULL,
    CONSTRAINT PK_DEPARTMENT PRIMARY KEY(DepartmentID)                 
)
GO

CREATE TABLE EMPLOYEE
(
    EmployeeId			INT				IDENTITY(1,1),
    LastName			NVARCHAR(50)	NOT NULL,										
    FirstName           NVARCHAR(50)	NOT NULL,
    Salary              DECIMAL (18,0)  NOT NULL, 
	DepartmentID        INT                               
	CONSTRAINT PK_EMPLOYEE PRIMARY KEY(EmployeeId),
	CONSTRAINT FK_EMPLOYEE_DEPARTMENT	FOREIGN KEY(DepartmentiD) REFERENCES DEPARTMENT (DepartmentID) ON DELETE SET NULL,          
)
GO
   
    
INSERT INTO DEPARTMENT (Departmentliame, Location) VALUES ('JAVA', 'TPHCM')
INSERT INTO DEPARTMENT (Departmentliame, Location) VALUES ('WEB PROGRAMMING', 'HANOI')
INSERT INTO DEPARTMENT (Departmentiame, Location) VALUES ('C#', 'TPHCM')

INSERT INTO EMPLOYEE (Lastlame, Firstlame, Salary, DepartmentID) VALUES ('JOHN', 'LUIS', 10.000, 1)
INSERT INTO EMPLOYEE (Lastlame, Firstlame, Salary, DepartmentID) VALUES ('MARRY', 'LUIS', 10.000, 1)
INSERT INTO EMPLOYEE (Lastiane, Firstlame, Salary, DepartmentID) VALUES ('PAUL', 'CARPENTER', 10.000, 2)
INSERT INTO EMPLOYEE (LastNane, FirstName, Salary, DepartmentID) VALUES ('RAUL', 'KING', 10.000, 3)
INSERT INTO EMPLOYEE (Lastlame, Firstlame, Salary, DepartmentID) VALUES ('PHILIP', 'LUIS', 10.000, 3)
INSERT INTO EMPLOYEE (Lastlane, Firstlame, Salary, DepartmentID) VALUES ('DAISY', 'YELLOW', 10.000, 1)
