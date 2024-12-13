-- I want all records from tbl_BannerMaster
Create procedure sp_SelectAllBannerMaster
As
Begin
	Select Banner_Id,Banner_Image,IsActive,Company_Id,User_Id,Created_Date 
	from tbl_BannerMaster	
End