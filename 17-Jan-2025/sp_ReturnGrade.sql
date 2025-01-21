ALTER procedure sp_ReturnGrade
As
Begin
	Select Student_Name,Student_Std,Student_Marks,Student_Subject,
		dbo.fn_CalculateGrade(Student_Marks) as Student_Grade
	from tbl_StudentDetail
End