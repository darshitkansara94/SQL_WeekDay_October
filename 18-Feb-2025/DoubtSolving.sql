Alter procedure sp_CategoryWithErrorHandling
(
	@Category_Name nvarchar(50),
	@SubCategory_Name nvarchar(50)
)
As
Begin
	Begin try
		Begin transaction tr_Insert
			Insert into tbl_CategoryMaster(Category_Name)
			values(@Category_Name)

			Insert into tbl_SubCategoryMaster(Category_Id,SubCategory_Name)
			values(2,@SubCategory_Name)

			print('Execute successfully')
		commit transaction tr_Insert
	End try
	Begin catch
		print('Execute with error')
		rollback transaction tr_Insert
	End catch
End

exec sp_CategoryWithErrorHandling 'Smart watch','Apple'

-------------------------------------------------------------------------------

Select * from tbl_StudentDetail 
where StudentDetail_Marks > 80

Select * from tbl_StudentDetail 

Select StudentDetail_Subject,COUNT(*) as Total from tbl_StudentDetail
group by StudentDetail_Subject
having COUNT(StudentDetail_Subject) < 11

------------------------------------------------------------------------------
Create procedure sp_Test
(
	-- Parameters
)
As
Begin
	Begin try
		Begin transaction tr_Name

			If(@Type = 'Insert')
			Begin
				-- Insert statement
			End
			Else if (@Type = 'Update')
			Begin
				-- Update statement
			End
			Else if (@Type = 'Delete')
			Begin
				-- Delete statement
			End
			Else if(@Type = 'Select')
			Begin
				-- Select statement
			End
			Else
			Begin
				Print('Invalid choice')
			End

		Commit transaction tr_Name
	End try
	Begin catch
		Rollback transaction tr_NAme
	End catch

End

---------------------------------------------------------------------------
Alter trigger tr_UpdateCategory
On tbl_CategoryMaster
For Update
As
Begin
	Declare @CategoryName nvarchar(50)

	Select @CategoryName = Category_Name from inserted

	Update tbl_CategoryMasterLog
		Set Category_Name = @CategoryName,
		Created_Date = GETDATE()
	where CategoryLog_Id = 2
End

Select * from tbl_CategoryMaster
select * from tbl_CategoryMasterLog

update tbl_CategoryMaster set Category_Name = 'Apple watch'
where Category_Id = 32

-----------------------------------------------------------------------------
Self join :
	use Students_DB
	
	Select * from tbl_Employee
	
	-- update tbl_Employee set Manager_Id = null where Employee_Id = 5

	Select E2.Employee_Id,E2.Employee_Name,E1.Employee_Name as manager_Name 
	from tbl_Employee e1, tbl_Employee E2
	Where E1.Employee_Id = e2.Manager_Id And E1.Employee_Salary is not null

	Select E1.Employee_Id,E1.Employee_Name,E2.Employee_Name as manager_Name 
	from tbl_Employee E1
	Left join tbl_Employee E2 on E1.Employee_Id = E2.Manager_Id
	Where E1.Employee_Salary is not null
-------------------------------------------------------------------------------


