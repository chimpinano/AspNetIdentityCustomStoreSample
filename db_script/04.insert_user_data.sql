INSERT INTO [dbo].[UserInfo]
	 (
	 [UserID], 
	 [LoginCode], 
	 [FirstName], 
	 [LastName], 
	 [EMail], 
	 [Password]
	 )
VALUES
	 (
	 NEWID(), 
	 N'narami', 
	 N'�Ȃ��', 
	 N'���悭��', 
	 N'narami@example.com', 
	 dbo.HashPassword('hogepassword')
	 );
