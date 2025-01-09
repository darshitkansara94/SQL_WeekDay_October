Select * from tbl_CategoryMaster
-- Delete duplicate records from table

With cte_CategoryMaster as
(
	Select 
	ROW_NUMBER() over(partition by Category_Name order by Category_Name) as rnk,Category_Id,Category_Name
	from tbl_CategoryMaster
)

Delete from cte_CategoryMaster where rnk > 1

Select * from cte_CategoryMaster where rnk > 1