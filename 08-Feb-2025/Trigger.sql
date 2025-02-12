Trigger:
	Trigger is special type of store procedure which is ecxecute on some
		action like Insert, Update, Delete.
	Trigger does not support parameters.
	We can cnot directly execute trigger just like SP.
	It will automatically execute when event fired on triggered table.
	Event : 
		Event is kind of code which perform some action.

	-- Syntax :
		-- For trigger
			Which is execute parellel with current code / SQL statement

			Create trigger tr_Name
			on tbl_name
			For Insert/ Update/ Delete
			As
			Begin
				SQL Statement
			End

		-- After trigger
			Which is execute once current code is executed / SQL statement

			Create trigger tr_Name
			on tbl_Name
			After Insert/ Update/ Delete
			As
			Begin
				SQL statement
			End

		-- Example :		
			Select * from tbl_EmployeeDetail
			Select * from tbl_EmployeeLog

			-- Execute Insert trigger
			Insert into tbl_EmployeeDetail(Employee_Name, 
				Employee_Address,
				Employee_MobileNo, Employee_Age)
			values('Yash','Baroda',12345689,25)

			Update tbl_EmployeeDetail
			set Employee_Age = 25