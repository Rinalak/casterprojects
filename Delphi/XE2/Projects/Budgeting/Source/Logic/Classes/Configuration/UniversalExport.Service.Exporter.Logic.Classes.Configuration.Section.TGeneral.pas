unit UniversalExport.Service.Exporter.Logic.Classes.Configuration.Section.TGeneral;

interface

uses
  ConfigPackage.Logic.TCustomSection,
  ConfigPackage.Logic.TDefaultValueAttribute,
  ConfigPackage.Logic.TSectionAttribute;

type

  /// <summary>
  /// ����� ���������
  /// </summary>
  [TSection('General')]
  TGeneral = class(TCustomSection)
  public
    /// <summary>
    /// ���������� ������������� ���������� ������
    /// </summary>
    [TDefaultValue(-1)]
    property ServiceId: Integer index 0 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ����� � �������� ����� ������� �������� ���������� ���������� �����
    /// </summary>
    [TDefaultValue(10)]
    property SleepInterval: Integer index 1 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ������������ ���������� ������������ �������������� �����
    /// </summary>
    [TDefaultValue(20)]
    property MaximumThreads: Integer index 2 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ������������� ���� �������������� ������
    /// </summary>
    [TDefaultValue(-1)]
    property FileFormatId: Integer index 3 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ����� ������������ �������
    /// </summary>
    [TDefaultValue(False)]
    property SingleRunMode: Boolean index 4 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ����� � �������� ����� ������� �������� ������������� ��������� ������� �����
    /// </summary>
    [TDefaultValue(300)]
    property RefreshInterval: Integer index 5 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ���� � ������� ����� � ������� ����������� ��������� ����� ��������
    /// </summary>
    [TDefaultValue('')]
    property TemporaryPath: string index 6 read GetStringValue write SetStringValue;

    /// <summary>
    /// ��� ����� ������� ����� ���������� ������ [<��������>.<�����>.<GUID>.xml]
    /// </summary>
    [TDefaultValue(False)]
    property UseFullTempFileName: Boolean index 7 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ������� ��������� ����� � ������ ������ �������� ������� ��� ����������
    /// </summary>
    [TDefaultValue(True)]
    property DeleteTempFiles: Boolean index 8 read GetBooleanValue write SetBooleanValue;

    /// <summary>
    /// ���� � �������� ��������, � ������� ���������� ������� ����� �������
    /// </summary>
    [TDefaultValue('')]
    property ReadyPath: string index 9 read GetStringValue write SetStringValue;
  end;

implementation

end.
