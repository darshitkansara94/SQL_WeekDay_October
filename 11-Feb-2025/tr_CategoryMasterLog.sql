Create trigger tr_CategoryMasterLog
on tbl_categoryMasterLog
For Insert
As
Begin
	Print('Category Master Log executed')
End