Create table tbl_StudentDetail
(
	Student_Id int primary key identity(1,1),
	Student_Name nvarchar(50),
	Student_Std int,
	Student_Marks decimal(18,2),
	Student_Subject nvarchar(50)
)

Insert into tbl_StudentDetail(Student_Name,Student_Std,Student_Marks,Student_Subject)
values('A',5,58,'Maths'),('A',5,89,'SS'),('A',5,65,'Hindi'),
		('B',5,96,'Maths'),('B',5,54,'SS'),('B',5,78,'Hindi'),
		('C',5,30,'Maths'),('C',5,88,'SS'),('C',5,44,'Hindi'),
		('D',5,38,'Maths'),('D',5,55,'SS'),('D',5,45,'Hindi')

Select * from tbl_StudentDetail

Select Student_Name,Student_Std,Student_Marks,Student_Subject,
	Case 
		When Student_Marks between 90 and 100 Then 'Grade A'
		When Student_Marks between 70 and 89 Then 'Grade B'
		When Student_Marks between 55 and 69 Then 'Grade C'
		When Student_Marks between 45 and 54 Then 'Grade D'
		When Student_Marks between 35 and 44 Then 'Grade E'
		Else 'Grade F' End as Student_Grade
from tbl_StudentDetail

Select Student_Name,Student_Std,Student_Marks,Student_Subject,
	dbo.fn_CalculateGrade(Student_Marks) as Student_Grade
from tbl_StudentDetail

Select dbo.fn_CalculateGrade(45) as Student_Grade

Exec sp_ReturnGrade

-- Assignment
Create a function that will return grade based on total sum of marks by student.
 -- Cases :
	Between 200 - 300 = Grade A
	Between 100- 199 = Grade B
	Between 50 - 99 = Grade C
	Else Grade F