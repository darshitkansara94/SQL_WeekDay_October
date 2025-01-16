-- Scalar value function with parameter
Create function fn_Addition
(
	@Param1 int,
	@Param2 int
)
Returns decimal(18,2)
As
Begin
	return @Param1 + @Param2
End