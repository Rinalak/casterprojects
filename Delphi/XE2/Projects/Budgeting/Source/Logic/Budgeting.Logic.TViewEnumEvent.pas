unit Budgeting.Logic.TViewEnumEvent;

interface

type
  TViewEnumEvent = (veCloseQuery, veQuitUpdate, veConfigurationExecute, veConfigurationUpdate, veAboutExecute, veAboutUpdate,
    veHelpContextExecute, veHelpContextUpdate, veStatusBarExecute, veToolBarExecute, veConnectExecute, veConnectUpdate, veDisconnectExecute,
    veDisconnectUpdate,
    veEntityChanged,
    veRefreshExecute,
    veRefreshUpdate,
    veExportToExcelExecute, veExportToExcelUpdate,
    veSelectedRecordChanged,
    veAddExecute, veAddUpdate,
    veEditExecute, veEditUpdate,
    veDeleteExecute, veDeleteUpdate
    );

implementation

end.
