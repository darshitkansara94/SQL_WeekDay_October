-- Scalar valued function
Create function fn_ConcatString()
Returns nvarchar(50)
As
Begin
	return (Select CONCAT_WS(' ','Hello','World'))
End