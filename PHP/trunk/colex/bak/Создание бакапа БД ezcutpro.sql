BACKUP DATABASE [ezcutpro] TO  DISK = N'C:\wamp\www\colex\bak\ezcutpro.bak' WITH NOFORMAT, INIT,  NAME = N'Colex-Полная База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'ezcutpro' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'ezcutpro' )
if @backupSetId is null begin raiserror(N'Ошибка верификации. Сведения о резервном копировании для базы данных "ezcutpro" не найдены.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\wamp\www\colex\bak\ezcutpro.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND