unit TAPEstimator.Configuration.uTInterfaceSection;

interface

uses
  ConfigPackage.uTCustomSection,
  ConfigPackage.uTDefaultValueAttribute,
  ConfigPackage.uTSectionAttribute,
  TAPEstimator.uConsts;

type

  [TSection(CONFIGURATION_INTERFACE_SECTION)]
  TInterfaceSection = class(TCustomSection)
  public
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_QUIT_CONFIRMATION)]
    property EnableQuitConfirmation: Boolean index 0 read GetBooleanValue write SetBooleanValue;
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_SPLASH_AT_START)]
    property EnableSplashAtStart: Boolean index 1 read GetBooleanValue write SetBooleanValue;
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_STATUSBAR)]
    property EnableStatusbar: Boolean index 2 read GetBooleanValue write SetBooleanValue;
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_TOOLBAR)]
    property EnableToolbar: Boolean index 3 read GetBooleanValue write SetBooleanValue;
  end;

implementation

end.
