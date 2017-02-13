<?php
//phpinfo();
// подключаем файлы ядра
require_once 'core/model.php';
require_once 'core/view.php';
require_once 'core/controller.php';
require_once 'core/routines.php';

/*
Здесь обычно подключаются дополнительные модули, реализующие различный функционал:
	> аутентификацию
	> кеширование
	> работу с формами
	> абстракции для доступа к данным
	> ORM
	> Unit тестирование
	> Benchmarking
	> Работу с изображениями
	> Backup
	> и др.
*/

//if (!isset($_SESSION))
if (!is_session_started())
{
  session_start();  
  session_regenerate_id();
  header("Cache-control:private");
}

require_once 'core/route.php';
Route::start(); // запускаем маршрутизатор