BACKUP DATABASE [budgeting] TO  DISK = N'D:\wamp\www\colex\bak\budgeting.bak' WITH NOFORMAT, INIT,  NAME = N'Budgeting-������ ���� ������ ��������� �����������', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'budgeting' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'budgeting' )
if @backupSetId is null begin raiserror(N'������ �����������. �������� � ��������� ����������� ��� ���� ������ "budgeting" �� �������.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'D:\wamp\www\colex\bak\budgeting.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND