unit UniversalExport.Service.Exporter.Logic.Classes.Configuration.Section.TDatabaseConnection;

interface

uses
  ConfigPackage.Logic.TCustomSection,
  ConfigPackage.Logic.TDefaultValueAttribute,
  ConfigPackage.Logic.TSectionAttribute;

type

  /// <summary>
  /// ��������� ����������� � ������� ��
  /// </summary>
  [TSection('Database Connection')]
  TDatabaseConnection = class(TCustomSection)
  public
    /// <summary>
    /// ������������/����� �������
    /// </summary>
    [TDefaultValue('')]
    property Host: string index 0 read GetStringValue write SetStringValue;

    /// <summary>
    /// ������������ ��
    /// </summary>
    [TDefaultValue('')]
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
