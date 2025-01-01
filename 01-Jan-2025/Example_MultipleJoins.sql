create table tbl_OrderMaster 
(
	Order_Id int primary key identity(1,1),
	Subcategory_Id int,
	Order_Date Datetime,
	Order_Qty int,
	Order_Amt decimal(10,2),
)

insert into tbl_OrderMaster (Subcategory_Id,Order_Date,Order_Qty,Order_Amt)
values(2,GETDATE(),45,100.25),(3,GETDATE(),55,150.25),(3,GETDATE(),65,170.25),
(5,GETDATE(),75,180.25),(7,GETDATE(),85,190.25)


Select * from tbl_OrderMaster

Select tbl_CategoryMaster.Category_Name,tbl_SubcategoryMaster.Subcategory_Name,
			tbl_SubcategoryMaster.SubCategory_Price,tbl_SubcategoryMaster.SubCategory_Quantity,
			tbl_SubcategoryMaster.Created_Date,
			tbl_OrderMaster.Order_Date,tbl_OrderMaster.Order_Qty,
			tbl_OrderMaster.Order_Amt			
from tbl_CategoryMaster
Inner join tbl_SubcategoryMaster on
	tbl_CategoryMaster.Category_Id = tbl_SubcategoryMaster.Category_Id
Inner join tbl_OrderMaster on
	tbl_SubcategoryMaster.Subcategory_Id = tbl_OrderMaster.Subcategory_Id