Create database Ecommerce

--- Requirement
	-- Sub Category (table)
	-- Order (table)

	-- Create trigger :
		Create a trigger for order data insert which is update sub category stock based on sub category id.

Use Ecommerce

Create table tbl_SubCategoryMaster
(
	SubCategory_Id int primary key identity(1,1),
	SubCategory_Name nvarchar(20),
	SubCategory_Quantity int
)

Create table tbl_OrderMaster
(
	Order_Id int primary key identity(1,1),
	SubCategory_Id int,
	Order_Quantity int
)

------------------------------------------- Insert data --------------------------------

Insert into tbl_SubCategoryMaster(SubCategory_Name,SubCategory_Quantity)
values('Laptop',20),('TV',25),('Watch',55)

Select * from tbl_SubCategoryMaster
Select * from tbl_OrderMaster

Insert into tbl_OrderMaster(SubCategory_Id,Order_Quantity)
values(1,1)

-------------------------------------- Create Trigger ----------------------------------

Alter trigger tr_InsertOrderMaster
On tbl_OrderMaster
For Insert
As
Begin
	Declare @OrderMasterQty int
	Declare @SubCategory_Id int

	Select @SubCategory_Id = SubCategory_Id from inserted
	Select @OrderMasterQty = Order_Quantity from inserted

	-- Select @SubCategoryQty - @OrderMasterQty
	Update tbl_SubCategoryMaster set
		SubCategory_Quantity = SubCategory_Quantity - @OrderMasterQty 
	where 
		SubCategory_Id = @SubCategory_Id
End