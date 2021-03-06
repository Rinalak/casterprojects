BACKUP DATABASE [ue_django] TO  DISK = N'C:\Site\ue_django.bak' WITH NOFORMAT, INIT,  NAME = N'ue_django-Полная База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'ue_django' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'ue_django' )
if @backupSetId is null begin raiserror(N'Ошибка верификации. Сведения о резервном копировании для базы данных "ue_django" не найдены.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Site\ue_django.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
