Create function fn_CalculateGrade
(
	@Student_Marks int
)
Returns nvarchar(10)
As
Begin
	return (
		Select
		Case 
			When @Student_Marks between 90 and 100 Then 'Grade A'
			When @Student_Marks between 70 and 89 Then 'Grade B'
			When @Student_Marks between 55 and 69 Then 'Grade C'
			When @Student_Marks between 45 and 54 Then 'Grade D'
			When @Student_Marks between 35 and 44 Then 'Grade E'
			Else 'Grade F' 
		End as Student_Grade
	) 
End