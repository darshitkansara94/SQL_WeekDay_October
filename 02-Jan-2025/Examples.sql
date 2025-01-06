Select * from tbl_SubcategoryMaster
Select * from tbl_CategoryMaster
select * from tbl_OrderMaster

Insert into tbl_SubcategoryMaster(Subcategory_Id,Category_Id,Subcategory_Name,SubCategory_Price,SubCategory_Quantity,
Created_Date)
Values(8,4,'Lenovo',45000,1,GETDATE())

Insert into tbl_OrderMaster(Subcategory_Id,Order_Date,Order_Qty,Order_Amt)
values(8,GETDATE(),25,450000)

Select * from tbl_SubcategoryMaster -- 1,4,6
Select * from tbl_OrderMaster

Select Subcategory_Id,Subcategory_Name from tbl_SubcategoryMaster
where Subcategory_Id Not In (Select Subcategory_Id from tbl_OrderMaster)

Select Subcategory_Id,Subcategory_Name from tbl_SubcategoryMaster
where Subcategory_Id In (Select Subcategory_Id from tbl_OrderMaster)

Select Subcategory_Id,Subcategory_Name from tbl_SubcategoryMaster
where Subcategory_Id Not In (2,3,5,7,8) 

Select * from vw_CategoryAndSubCategoryMaster 
Where Subcategory_Id not in (Select Subcategory_Id from tbl_OrderMaster)
