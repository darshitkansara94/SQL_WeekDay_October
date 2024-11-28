Identity Key :
	Identity key consider as Auto Increment key.
	It is used to auto increment value of column.
	And identity key applied only on 'Int' type of column.
	It make sure sequence is not repeated and number is always unique.

	-- Syntax :
		-- Identity Key
		Create table tbl_Name
		(
			column1 int identity(1,1),
			column2 datatype,
			column3 datatype
		)

		-- Combination with primary key
		Create table tbl_Name
		(
			column1 datatype primary key identity(1,1),
			column2 datatype,
			.
			.
			.
		)
	
	-- How identity key is work
	Identity(1,2)
		My value is start with 1.
		How much no we want to increment.
			Ex :
				1
				1 + 2 = 3
				3 + 2 = 5

	-- Example :
		create table tbl_Brand
		(
			Brand_Id int primary key Identity(1,1),
			Brand_Name varchar(15),
			Subcategory_Id int,
			Brand_Price decimal(18,2)
		)

		Select * from tbl_categoryMaster
		Select * from tbl_SubcategoryMaster

		Insert into tbl_Brand(Brand_Name,Subcategory_Id,Brand_Price)
		values('Lenovo M20',1,'10000')

		Select Brand_Name,SubCategory_Id,Brand_Price,Brand_Id from tbl_Brand