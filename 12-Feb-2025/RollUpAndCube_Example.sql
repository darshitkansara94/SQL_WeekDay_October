Select * from tbl_ProductMaster

Select Product_Name,Product_Price,sum(Product_Price) as Product_PriceSum
	from tbl_ProductMaster
group by Product_Name,Product_Price

Select Product_Name,Product_Price,sum(Product_Price) as Product_PriceSum
	from tbl_ProductMaster
group by rollup(Product_Name,Product_Price)

Select Product_Name,Product_Price,sum(Product_Price) as Product_PriceSum
	from tbl_ProductMaster
group by cube(Product_Name,Product_Price)

Insert into tbl_ProductMaster(Product_Name,Product_Price,Product_Qunatity)
values('Apple watch',4000,2)