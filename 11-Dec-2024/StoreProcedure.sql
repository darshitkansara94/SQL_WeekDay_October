Store Procedure (SP) :
	Store procedure is collection or single statement od SQL.
	We can use store procedure multiple times and reuse the same code.
	Through frontend we can directly use SP.
	We can not have duplicate SP for that DB.
		Ex :
			sp_1 : Select data from category table
			sp_2 : Select data from category table.
	We will define SP with the prefix "sp_".

	-- Syntax :
		-- Create new SP with parameter
		Create procedure sp_Procedurename
		(
			Parameters
		)
		As
		Begin
			SQL Statement (Insert / Update/ Delete / Select)
		End

		-- Create new SP without parameter
		Create procedure sp_Procedurename
		As
		Begin
			SQL Statement (Insert / Update/ Delete / Select)
		End

	-- What is Parameter :
		We store value from outside of the scope
		Parameter create with the '@' keyword.

		-- Syntax :
			@ParamName datatype

	-- What is Variable :	
		We store value within that scope
		Variable create with the Declare keyword.

		-- Syntax :
			Declare @variableName datatype

