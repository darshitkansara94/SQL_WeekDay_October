Select * from tbl_CategoryMaster

Create nonclustered index idx_BannerId
on tbl_bannerMaster(Banner_Id)

Create unique nonclustered index idx_CategoryName
on tbl_CategoryMaster(Category_Name)

Create nonclustered index idx_CompanyId
on tbl_CategoryMaster(Company_Id)

Select * from tbl_CategoryMaster

Insert into tbl_CategoryMaster(Category_Name)
values('Laptop1')

-- Remove index from DB
	Using 'Drop' we can remove index from database.

	drop index idx_CompanyId on tbl_CategoryMaster