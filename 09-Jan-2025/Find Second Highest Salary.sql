-- Find second highest salary
Create table tbl_EmployeeSalary
(
	Employee_Id int primary key identity(1,1),
	Employee_Name nvarchar(20),
	Employee_Salary decimal(18,2)
)

Insert into tbl_EmployeeSalary(Employee_Name,Employee_Salary)
values('Anurima',15000),
	('Swara',25000),
	('Meenaz',15000),
	('Yash',30000),
	('Nishant',16000),
	('Mahima',25000)
	
Select * from tbl_EmployeeSalary order by Employee_Salary desc

-- CTE for find second highest salary

Declare @RankNumber as int = 3;

With cte_EmployeeSalary as
(
	Select DENSE_RANK() over(order by Employee_Salary desc) as rnk,
	Employee_Name,Employee_Salary	
	from tbl_EmployeeSalary
)

Select * from cte_EmployeeSalary where rnk = @RankNumber

Exec sp_GetEmployeeSalary 2