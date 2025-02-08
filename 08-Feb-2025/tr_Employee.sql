Create trigger tr_Employee
On tbl_EmployeeDetail
For Insert
As
Begin
	Insert into tbl_EmployeeLog(Log_Description)
	values('New Employee is entered')
End