Create function fn_StudentDetailWithourParam
(
	
)
Returns Table
As
	return (
		Select 
			Student_Id,Student_Name,Student_Marks,Student_Subject,
			Case
			When Student_Marks between 90 and 100 Then 'Grade A'
			When Student_Marks between 75 and 89 Then 'Grade B'
			When Student_Marks between 65 and 74 Then 'Grade C'
			When Student_Marks between 55 and 64 Then 'Grade D'
			When Student_Marks between 35 and 54 Then 'Grade E'
			Else 'Grade F' End as Result
		from tbl_StudentDetail		
	)