create table tbl_EmployeeDetail
(
	Emp_Id int primary key identity(1,1),
	Employee_Name nvarchar(10),
	Employee_Address nvarchar(50),
	Employee_MobileNo bigint,
	Employee_Age int
)

Create table tbl_EmployeeLog
(
	Log_Id int primary key identity(1,1),
	Log_Description nvarchar(500)
)