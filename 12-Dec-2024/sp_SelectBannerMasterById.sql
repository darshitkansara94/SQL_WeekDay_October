-- I want records by banner id from tbl_BannerMaster
Alter procedure sp_SelectBannerMasterById
(
	@Banner_Id int
)
As
Begin
	Select Banner_Id,Banner_Image,IsActive,Company_Id,Created_Date 
	from tbl_BannerMaster
	Where Banner_Id = @Banner_Id
End