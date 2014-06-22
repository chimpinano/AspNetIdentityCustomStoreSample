/*�p�X���[�h�̃n�b�V�����A���S���Y���̃T���v��*/
CREATE FUNCTION [dbo].[HashPassword]
(
	@raw_password NVARCHAR
)
RETURNS NVARCHAR(128)
AS
BEGIN
	/* SQL Server�̕W��HASH�֐��𗘗p�����B�����܂Łw�Ǝ��̕����̃p�X���[�h�n�b�V�������W�b�N�x�̃T���v���ł��B */
	RETURN(SUBSTRING(dbo.BinToHexString(HASHBYTES('SHA2_512', @raw_password)),3,128))
END
