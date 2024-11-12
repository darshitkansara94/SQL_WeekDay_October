System defined functions :
	System defined function is something which SQL server provide and we can use it in any window or any script.
	Function is always defined with the '()' brackets.
	Types of System defined functions :

		Aggeregate Function :
			Aggregate function is use for perform mathemetical operations.

			Types of Agreegate functions :
				Sum() :
					It will return addition of two or more that two values.

					-- Syntax :
						Select Sum(columnname) as Addition from tablename

					-- Example
						use ECommerce_DB

						Select * from tbl_SubcategoryMaster

						Select SUM(Subcategory_Price) as Total_of_Price from tbl_SubcategoryMaster

						Select SUM(100 + 10) as Addition

				Avg() :
					Return average value from the column.
					Avg value calculation formula :
						Sum of total value / Count of value

					-- Syntax
						Select AVG(columnname) as aliasname from tablename

					-- Example :
						Select AVG(Subcategory_Price) as AveragePrice from tbl_SubcategoryMaster

				Count()
					Return number of total rows

					-- Syntax :
						Select Count(*) from tablename

					-- Example :
						Select Count(*) as TotalRows from tbl_SubcategoryMaster
				Min() :
					Return minimum value.

					-- Syntax :
						Select MIN(columnname) from tablename

					-- Example :
						Select MIN(Subcategory_Price) as MinimumPrice from tbl_SubcategoryMaster
				Max()
					Return maximum value from the column.

					-- Syntax
						Select max(columnname) from tablename

					-- Example :
						Select MAX(Subcategory_Price) as MaximumPrice from tbl_SubcategoryMaster				

		String function :
			
		Date function
		
