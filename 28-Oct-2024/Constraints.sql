Primary Key :
	Primary key allows user to insert unique data.
	We can create only one primary key per table.
	Primary key will not allow null data.

	-- Syntax :
		create table tbl_name
		(
			column1 datatype primary key,
			column2 datatype,
			.
			.
			.
			columnN datatype
		)

		-- Add primary key in existing table.
		Alter table tbl_Name
		Add constraint constraint_name primary key(column_name)

	-- Example :
		create table tbl_CategoryMaster
		(
			Category_Id int primary key,
			Category_Name nvarchar(100),
			Modified_Date datetime,
			Created_Date datetime,
			IsDeleted bit
		)

		-- Insert data
		Insert into tbl_CategoryMaster(Category_Id,Category_Name,Created_Date,IsDeleted)
		values(2,'AC','2024-10-28 08:37:45.843',1)

		-- Generate Error as PK is not allow null value.
		-- Our PK column is 'Category_Id' which is not passed as a insert statement.
		Insert into tbl_CategoryMaster(Category_Name,Created_Date,IsDeleted)
		values('AC','2024-10-28 08:37:45.843',1)

		Select Category_Id,Category_Name,Created_Date,Modified_Date,IsDeleted 
		from tbl_CategoryMaster

		-- Create Subcategory
		Create table tbl_SubcategoryMaster
		(
			Subcategory_Id int,
			Category_Id int,
			Subcategory_Name nvarchar(50),
			SubCategory_Price decimal(18,2),
			SubCategory_Quantity int,
			Created_Date datetime,
			Modified_Date datetime,
			IsDeleted bit
		)

		-- Add PK in exisiting table

		alter table tbl_SubcategoryMaster
		Alter column SubCategory_Id int not null

		Alter table tbl_SubcategoryMaster
		Add constraint pk_Subcategory_Id primary key(SubCategory_Id)