unit Budgeting.Logic.Classes.Configuration.TDatabaseConnectionSection;

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
  TDatabaseConnectionSection = class(TCustomSection)
  public
    /// <summary>
    /// ������������/����� �������
    /// </summary>
    [TDefaultValue('svbyprisd028')]
    property Host: string index 0 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������������ ��
    /// </summary>
    [TDefaultValue('Shate-M-Test')]
    property Database: string index 1 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������� � �������� ��� ������� ����������� � �������
    /// </summary>
    [TDefaultValue(300)]
    property ConnectionTimeOut: Integer index 2 read GetIntegerValue write SetIntegerValue;

    /// <summary>
    /// ������� � �������� ��� ������� ���������� �������
    /// </summary>
    [TDefaultValue(60000)]
    property CommandTimeOut: Integer index 3 read GetIntegerValue write SetIntegerValue;
  end;

implementation

end.
