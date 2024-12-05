Joins :
	-- Self Join
		Self join, used to join table itself.
		Alias name for table is mandatory.

		-- Syntax :
			Select column1, column2,column3...ColumnN from tbl_1 t1, tbl_1 t2
			Where condition

		-- Example :
			Create table tbl_Employee
			(
				Employee_Id int primary key identity(1,1),
				Employee_Name nvarchar(15),
				Manager_Id int
			)

			Insert into tbl_Employee(Employee_Name,Manager_Id)
			values('A',2),('B',5),('C',4),('D',3),('E',1)

			Select * from tbl_Employee

			Select E1.Employee_Id,E1.Employee_Name,E1.Manager_Id, E2.Employee_Name as Manager_Name
				from tbl_Employee E1, tbl_Employee E2
			Where 
				E1.Manager_Id = E2.Employee_Id

	-- Outer join :
		Outer join use for getting matching data from both the table and all the data from right and left
			table.

		-- Syntax :
			Select column1, column2, column3 from tbl_1
				full outer join tbl_2 on tbl_1.column_name = tbl_2.column_name

		-- Example :
			Select * from tbl_CategoryMaster
			Select * from tbl_SubcategoryMaster

			Select * from tbl_CategoryMaster
			 full outer join tbl_SubcategoryMaster on 
				tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id

	-- Cross join
		Cross join has one to many relationship.

		-- Syntax :
			Select column1, column2, column3 from tbl_1
				cross join tbl_2
			Where conditions

		-- Example :
			Select tbl_CategoryMaster.Category_Id, tbl_CategoryMaster.Category_Name,
				tbl_SubcategoryMaster.Subcategory_Id,tbl_SubcategoryMaster.Subcategory_Name
			from tbl_CategoryMaster
			 cross join tbl_SubcategoryMaster 				