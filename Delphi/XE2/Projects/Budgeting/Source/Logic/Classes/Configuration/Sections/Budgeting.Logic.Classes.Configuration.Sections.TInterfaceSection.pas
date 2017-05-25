unit Budgeting.Logic.Classes.Configuration.Sections.TInterfaceSection;

interface

uses
  ConfigPackage.Logic.TCustomSection,
  ConfigPackage.Logic.TDefaultValueAttribute,
  ConfigPackage.Logic.TSectionAttribute,
  Budgeting.Logic.Consts;

type

  [TSection(INTERFACE_SECTION)]
  TInterfaceSection = class(TCustomSection)
  public
    /// <summary>
    /// ��������� ������������� ��� ������ �� ���������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_QUIT_CONFIRMATION)]
    property EnableQuitConfirmation: Boolean index 0 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// �������� �������� ��� ������� ���������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_SPLASH_AT_START)]
    property EnableSplashAtStart: Boolean index 1 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// �������� ������ ���������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_STATUSBAR)]
    property EnableStatusbar: Boolean index 2 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// �������� ������ �����������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_TOOLBAR)]
    property EnableToolbar: Boolean index 3 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ��������� ������� � ��������� �������� ����
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_STORE_MAINFORM_SIZES_AND_POSITION)]
    property EnableStoreMainFormSizesAndPosition: Boolean index 4 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ��������� ���������� ������ ���������� ������������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_STORE_LOGIN)]
    property EnableStoreLogin: Boolean index 5 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ��������� ���������� ������ ���������� ������������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_STORE_PASSWORD)]
    property EnableStorePassword: Boolean index 6 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ����� ��������� ������������ ;)
    /// </summary>
    [TDefaultValue('')]
    property Login: string index 7 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������ ��������� ������������ ;)
    /// </summary>
    [TDefaultValue('')]
    property Password: string index 8 read GetStringValue write SetStringValue;

    /// <summary>
    /// ��������� ���������
    /// </summary>
    [TDefaultValue(CONFIGURATION_DEFAULT_ENABLE_AUTO_LOGON)]
    property EnableAutoLogon: Boolean index 9 read GetBooleanValue write SetBooleanValue;
  end;

implementation

end.
