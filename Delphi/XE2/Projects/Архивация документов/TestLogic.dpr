program TestLogic;

uses
  Vcl.Forms,
  uTTestLogicMainForm in 'uTTestLogicMainForm.pas' {TestLogicMainForm},
  uArchivingCommonRoutines in 'uArchivingCommonRoutines.pas',
  uIArchiveCompanyList in 'uIArchiveCompanyList.pas',
  uIArchiveCompanyItem in 'uIArchiveCompanyItem.pas',
  uILoadableItem in 'uILoadableItem.pas',
  uILoadableList in 'uILoadableList.pas',
  uTArchiveCompanyList in 'uTArchiveCompanyList.pas',
  uTArchiveCompanyItem in 'uTArchiveCompanyItem.pas',
  uTLoadableItem in 'uTLoadableItem.pas',
  uTLoadableItemClass in 'uTLoadableItemClass.pas',
  uTLoadableList in 'uTLoadableList.pas',
  uTLoadableListClass in 'uTLoadableListClass.pas',
  uIArchiveBoxTypeItem in 'uIArchiveBoxTypeItem.pas',
  uIArchiveBoxTypeList in 'uIArchiveBoxTypeList.pas',
  uTArchiveBoxTypeList in 'uTArchiveBoxTypeList.pas',
  uTArchiveBoxTypeItem in 'uTArchiveBoxTypeItem.pas',
  uTMessageType in 'uTMessageType.pas',
  uTOnDisplayMessage in 'uTOnDisplayMessage.pas',
  uIShowableField in 'uIShowableField.pas',
  uTShowableField in 'uTShowableField.pas',
  uICustomBusinessLogic in 'uICustomBusinessLogic.pas',
  uTCustomBusinessLogic in 'uTCustomBusinessLogic.pas',
  uICauseOfDamageItem in 'uICauseOfDamageItem.pas',
  uICauseOfDamageList in 'uICauseOfDamageList.pas',
  uTCauseOfDamageItem in 'uTCauseOfDamageItem.pas',
  uTCauseOfDamageList in 'uTCauseOfDamageList.pas',
  uIArchiveDocumentItem in 'uIArchiveDocumentItem.pas',
  uTArchiveDocumentItem in 'uTArchiveDocumentItem.pas',
  uTArchiveDocumentItemClass in 'uTArchiveDocumentItemClass.pas',
  uTCustomBSOItem in 'uTCustomBSOItem.pas',
  uICustomBSOItem in 'uICustomBSOItem.pas',
  uIArchiveDocumentList in 'uIArchiveDocumentList.pas',
  uTArchiveDocumentList in 'uTArchiveDocumentList.pas',
  uTArchiveDocumentListClass in 'uTArchiveDocumentListClass.pas',
  uTShipmentBSOItem in 'uTShipmentBSOItem.pas',
  uIShipmentBSOItem in 'uIShipmentBSOItem.pas',
  uTShipmentBSOWithActItem in 'uTShipmentBSOWithActItem.pas',
  uIShipmentBSOWithActItem in 'uIShipmentBSOWithActItem.pas',
  uTDamagedBSOItem in 'uTDamagedBSOItem.pas',
  uIDamagedBSOItem in 'uIDamagedBSOItem.pas',
  uTDamagedBSOList in 'uTDamagedBSOList.pas',
  uTShipmentBSOList in 'uTShipmentBSOList.pas',
  uTShipmentBSOWithActList in 'uTShipmentBSOWithActList.pas',
  uIArchiveBoxItem in 'uIArchiveBoxItem.pas',
  uTArchiveBoxItem in 'uTArchiveBoxItem.pas',
  uIShowable in 'uIShowable.pas',
  uIArchiveBoxList in 'uIArchiveBoxList.pas',
  uTArchiveBoxList in 'uTArchiveBoxList.pas',
  uIDocumentArchivingBusinessLogic in 'uIDocumentArchivingBusinessLogic.pas',
  uTDocumentArchivingBarcodeType in 'uTDocumentArchivingBarcodeType.pas',
  uTReportDataModule in 'uTReportDataModule.pas' {ReportDataModule: TDataModule},
  uTDocumentArchivingBusinessLogic in 'uTDocumentArchivingBusinessLogic.pas',
  uTShipmentBSOArchivingBusinessLogic in 'uTShipmentBSOArchivingBusinessLogic.pas',
  uTDamagedBSOArchivingBusinessLogic in 'uTDamagedBSOArchivingBusinessLogic.pas',
  uTShipmentBSOWithActArchivingBusinessLogic in 'uTShipmentBSOWithActArchivingBusinessLogic.pas',
  uTDocumentArchivingBusinessLogicClass in 'uTDocumentArchivingBusinessLogicClass.pas',
  uTArchiveDocumentTypeItem in 'uTArchiveDocumentTypeItem.pas',
  uIArchiveDocumentTypeItem in 'uIArchiveDocumentTypeItem.pas',
  uIArchiveDocumentTypeList in 'uIArchiveDocumentTypeList.pas',
  uTArchiveDocumentTypeList in 'uTArchiveDocumentTypeList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTestLogicMainForm, TestLogicMainForm);
  Application.Run;

end.
