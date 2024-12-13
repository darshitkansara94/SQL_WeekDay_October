Create procedure sp_InsertUser
(
	@Register_Id int,
	@Reg_FirstName nvarchar(100),
	@Reg_MiddleName nvarchar(100),
	@Reg_LastName nvarchar(100),
	@Reg_Mobile nvarchar(100),
	@Reg_Address nvarchar(100),
	@Reg_Email nvarchar(100)
)
As
Begin
	Insert into tbl_RegisterUser(Register_Id,Reg_FirstName,Reg_MiddleName,Reg_LastName,Reg_Mobile,Reg_Address,
		Reg_Email)
	values(@Register_Id, @Reg_FirstName,@Reg_MiddleName,@Reg_LastName,@Reg_Mobile,@Reg_Address,
		@Reg_Email)
End

-- Execute Store Procedure
Exec sp_InsertUser 3,'Darshit','Kansara','','123456789','Baroda','abc@123'

Exec sp_InsertUser 4,'Nitin','','Shah','123456789','Baroda','abc@123'