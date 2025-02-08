Create trigger tr_EmployeeUpdate
on tbl_EmployeeDetail
For Update
As
Begin
	Insert into tbl_EmployeeLog(Log_Description)
	values('Existing Employee is updated')
End