Database : (DB)
	Database is where we can store our data.
	It is collection of Tables, Store procedures, Views, Functions, Triggers etc..
	We can create multiple database into a single server.
	Every DB name must be unique.
	Space is not allowed in DB name.

	-- Syntax 
		Create database database_name

		-- To delete DB
			Drop database database_name

	-- Example
		-- Create a new DB
		Create database ECommerce_DB

		-- Delete database Database_Name
		Drop database Database_name

		-- Example
			Drop database ECommerce_DB1
		
		-- How we can switch between Two DB:
			We have to use "Use" statement to switch between two diff DB.
			-- Syntax
			Use database_name

			-- Example
				Use CrystalAndStone

		-- Rename Database
			-- Syntax
				Alter database Existingdatabase_Name
				modify name = new_databasename

			-- Example
				Alter database Ecommerce_DB
				Modify name = E_Commerce_DB

