Table value function :
	Table value function return a table as output.
	We can combine two tables using output from table value function.

	Syntax :
		Create function fn_Name
		(
			-- Parameter
		)
		Returns Table
		As
			Return statement

		-- How to fetch / execute table value function
			Select * from dbo.fn_name()

		-- Example
			Select * from dbo.fn_StudentDetail()

			Select * from dbo.fn_StudentDetail(2)

			Select * from tbl_StudentsRecord

			Select * from dbo.fn_StudentDetail(2) fsd
			Inner join tbl_StudentsRecord sr on fsd.Student_Id = sr.Student_Id

			Select * from dbo.fn_StudentDetailWithourParam() where Student_Id = 3