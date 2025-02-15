Group by Rollup and cube

Rollup :
	Calculate the total and subtotal only not in detail statement.

	-- Syntax :
		Select column1,column2,
			AggregateFunction(column_name) from tbl_Name
		group by rollup(column1, column2)
Cube :