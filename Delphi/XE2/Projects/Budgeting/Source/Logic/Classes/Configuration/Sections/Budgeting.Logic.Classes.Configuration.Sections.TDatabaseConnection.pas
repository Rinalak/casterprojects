unit Budgeting.Logic.Classes.Configuration.Sections.TDatabaseConnection;

interface

uses
  ConfigPackage.Logic.TCustomSection,
  ConfigPackage.Logic.TDefaultValueAttribute,
  ConfigPackage.Logic.TSectionAttribute,
  Budgeting.Logic.Consts;

type

  /// <summary>
  /// ��������� ����������� � ������� ��
  /// </summary>
  [TSection(DATABASE_CONNECTION_SECTION)]
  TDatabaseConnection = class(TCustomSection)
  public
    /// <summary>
    /// ������������/����� �������
    /// </summary>
    [TDefaultValue('.')]
    property Host: string index 0 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������������ ��
    /// </summary>
    [TDefaultValue('Budgeting')]
    property Database: string index 1 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������� � �������� ��� ������� ����������� � �������
    /// </summary>
    [TDefaultValue(30)]
    property ConnectionTimeOut: Integer index 2 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ������� � �������� ��� ������� ���������� �������
    /// </summary>
    [TDefaultValue(60000)]
    property CommandTimeOut: Integer index 3 read GetIntegerValue write SetIntegerValue;
  end;

implementation

end.
