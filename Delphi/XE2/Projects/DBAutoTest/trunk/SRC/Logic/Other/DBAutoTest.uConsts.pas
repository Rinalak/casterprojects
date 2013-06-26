unit DBAutoTest.uConsts;

interface

uses
  Winapi.Windows,
  DBAutoTest.uTTaskStatus,
  DBAutoTest.uResourceStrings;

const
  APPLICATION_NAME = 'DBAutoTest';

  MESSAGE_TYPE_ERROR: Cardinal = MB_OK + MB_ICONERROR + MB_DEFBUTTON1;
  MESSAGE_TYPE_WARNING: Cardinal = MB_OK + MB_ICONWARNING + MB_DEFBUTTON1;
  MESSAGE_TYPE_CONFIRMATION_QUESTION: Cardinal = MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2;
  MESSAGE_TYPE_CONFIRMATION_WARNING_OK: Cardinal = MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON1;
  MESSAGE_TYPE_CONFIRMATION_WARNING_CANCEL: Cardinal = MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2;

  TASK_DEFAULT_ENABLED = True;
  TASK_DEFAULT_GROUP = '';
  TASK_DEFAULT_NAME = '';
  TASK_DEFAULT_SQL = nil;
  TASK_DEFAULT_STATUS = tsUnknown;

  CONFIGURATION_DEFAULT_ACTIVE_PAGE = 0;
  CONFIGURATION_DEFAULT_ENABLE_PLAY_SOUND_ON_COMPLETE = True;
  CONFIGURATION_DEFAULT_ENABLE_QUIT_CONFIRMATION = True;
  CONFIGURATION_DEFAULT_ENABLE_SPLASH_AT_START = True;
  CONFIGURATION_DEFAULT_ENABLE_STATUSBAR = True;
  CONFIGURATION_DEFAULT_ENABLE_TOOLBAR = True;
  CONFIGURATION_DEFAULT_ENABLE_STORE_MAINFORM_SIZES_AND_POSITION = True;
  CONFIGURATION_DEFAULT_ENABLE_GENEDATE_FASTREPORT_DOCUMENT = False;
  CONFIGURATION_DEFAULT_ENABLE_GENEDATE_EXCEL_DOCUMENT = False;

  RECENTS_DEFAULT_COUNT = 0;

  RECENT_DEFAULT_FULL_NAME = '';

  PROFILE_DEFAULT_ACTIVE_PAGE = 0;
  PROFILE_DEFAULT_SERVER = '';
  PROFILE_DEFAULT_LOGIN = '';
  PROFILE_DEFAULT_PASSWORD = '';
  PROFILE_DEFAULT_DB = '';
  PROFILE_DEFAULT_WIN_NT_SECURITY = True;
  PROFILE_DEFAULT_STORE_PASSWORD = False;

  ADO_CONNECTION_STRING_PREFIX = 'Provider="SQLOLEDB.1";Data Source="%s"';
  ADO_CONNECTION_STRING_SUFFIX_INTEGRATED_SECURITY = ';Integrated Security="SSPI"';
  ADO_CONNECTION_STRING_SUFFIX_PERSIST_SECURITY_INFO = ';Persist Security Info="%s"';
  ADO_CONNECTION_STRING_SUFFIX_USER_ID = ';User ID="%s"';
  ADO_CONNECTION_STRING_SUFFIX_PASSWORD = ';Password="%s"';
  ADO_CONNECTION_STRING_SUFFIX_INITIAL_CATALOG = ';Initial Catalog="%s"';

  ADO_CONNECTION_DEFAULT_COMMAND_TIMEOUT = 60000;

  TASK_STATUS_NAMES: array [Low(TTaskStatus) .. High(TTaskStatus)] of string = (RsUnknown, RsExecuting, RsError, RsComplete);

  WM_TASK_THREAD_MESSAGE = 'WM_TASK_THREAD_MESSAGE';


implementation

end.
