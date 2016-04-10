BACKUP DATABASE [Updates] TO  DISK = N'C:\wamp\www\colex\bak\Updates.bak' WITH NOFORMAT, INIT,  NAME = N'Updates-Полная База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'Updates' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'Updates' )
if @backupSetId is null begin raiserror(N'Ошибка верификации. Сведения о резервном копировании для базы данных "Updates" не найдены.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\wamp\www\colex\bak\Updates.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
