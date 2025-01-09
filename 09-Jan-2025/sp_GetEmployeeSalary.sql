Create procedure sp_GetEmployeeSalary
(
	@RankNumber as int
)
As
Begin
	With cte_EmployeeSalary as 
	(
		Select 
		DENSE_RANK() over(Order by Employee_Salary desc) as rnk, Employee_Name,Employee_Salary
		from tbl_EmployeeSalary
	)

	Select * from cte_EmployeeSalary where rnk = @RankNumber
End