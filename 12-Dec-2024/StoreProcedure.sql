-- Syntax :
	Create procedure sp_name
	(
		Parameters
	)
	As
	Begin
		 SQL Statement(Insert/ Update/ Delete / Select)
	End


Select * from tbl_BannerMaster

Select * from tbl_BannerMaster where Banner_Id = 3

alter table tbl_BannerMaster
drop column User_Id

-- Execute storeprocedure
Exec sp_SelectAllBannerMaster

Exec sp_SelectAllBannerMaster

Exec sp_SelectAllBannerMaster

Exec sp_SelectBannerMasterById 3

Exec sp_SelectBannerMasterById 4

Exec sp_SelectBannerMasterById 6