select * from tbl_CategoryMaster

Index :
	Index is used to make retrieval fast in select statement.
	Index must be applied on column which is used most in where clause.
	Multiple index can slow down insert / update or delete statement execution.

	Two types of ndex :
		Clustered Index :
			Clustered index applied on primary key of table.
			We can create only one clustered key index  per table.
			Clustered key is save as unordered structure.

			-- Syntax :
				Create index index_name
				on tbl_name (column_name)

				-- Clustered index
				Create unique nonclustered index index_name
				on tbl_name (column_name)

		Nonclustered Index :
			It can be applied on multipe columns in single table.
			Multiple index creation can slow down Insert/ Update or delete operation.

			-- Syntax :
				Create nonclustered index index_name
				on tbl_name (column_name)

				-- Multiple index 
				Create nonclustered index index_name
				on tbl_name (column1, column2, column3...)


		-- How to delete Index :
			Drop index index_name on tbl_name