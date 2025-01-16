Functions :
	Two types of functions :
		1. System defined functions
		2. User defined functions
			1. Scalar valued function :
				When we want to return single value.
				Single value can be int, string, char,decimal.

				-- Syntax :
					Create function fn_name
					(
						-- Parameters
					)
					Returns datatype (nvarchar/ varchar/decimal...)
					As
					Begin
						return SQL statement
					End

				-- Example :
					Select [dbo].[fn_ConcatString]() as ConcatValue

					Select dbo.fn_Addition(10,20) as Addition

			2. Table valued function