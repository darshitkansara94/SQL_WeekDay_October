Pivot Table :
	When we have a requirement to convert column value inot row header then we have to use pivot table.
	Pivot table is used for reporting and data analysis purpose.

	-- Syntax :
		Select column1, column2,column3 from
			(Select column1,column2,column3 from tbl_Name) as tbl1
		Pivot
			(Aggregate function for 
				(column to be used for total)[Column to be used as header]) as tbl_2
			group by tbl2.column_name

	-- Example :
		use Ecommerce

		Create table tbl_SalesByRegion
		(
			Region nvarchar(50),
			Sales_Year int,
			Sales_Amount decimal(18,2)
		)

		Insert into tbl_SalesByRegion(Region,Sales_Year,Sales_Amount)
		values('South',2010,500),('North',2010,250),('East',2011,500),('South',2011,200),('East',2012,300)

		Select * from tbl_SalesByRegion

		Select Region,[2010],[2011],[2012] from
			(Select Region,Sales_year,Sales_Amount from tbl_SalesByRegion) AS T1
		Pivot
			(Sum(Sales_Amount) for [sales_year] in ([2010],[2011],[2012])) as T2
		order by t2.Region

		Select Sales_Year,South,East,North from
			(Select Region,Sales_year,Sales_Amount from tbl_SalesByRegion) AS T1
		Pivot
			(Sum(Sales_Amount) for [Region] in (South,East,North)) as T2
		order by t2.Sales_Year

		Select Region,Sales_Year,sum(Sales_Amount) as Sales_Amount 
		from tbl_SalesByRegion
		group by Region,Sales_Year