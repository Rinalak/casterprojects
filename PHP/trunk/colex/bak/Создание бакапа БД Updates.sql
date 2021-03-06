BACKUP DATABASE [Updates] TO  DISK = N'D:\wamp\www\colex\bak\Updates.bak' WITH FORMAT, INIT,  NAME = N'Updates-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'Updates' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'Updates' )
if @backupSetId is null begin raiserror(N'Ошибка верификации. Сведения о резервном копировании для базы данных "Updates" не найдены.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'D:\wamp\www\colex\bak\Updates.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
