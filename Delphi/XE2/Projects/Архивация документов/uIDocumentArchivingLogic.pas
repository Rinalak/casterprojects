unit uIDocumentArchivingLogic;

interface

uses
  uICustomBusinessLogic,
  uIDocument,
  uIArchiveBox;

type
  IDocumentArchivingLogic = interface(ICustomBusinessLogic)
    ['{B4D4317B-5679-4A31-9F53-F31CFFD99A6F}']
    function GetCurrentBox: IArchiveBox;
    procedure SetCurrentBox(const AValue: IArchiveBox);
    /// <summary>
    /// ������� �������� �����
    /// </summary>
    property CurrentBox: IArchiveBox read GetCurrentBox write SetCurrentBox;
    /// <summary>
    /// ������� ����������� ����������� ���������� ���� ������
    /// ���������� ����
    /// </summary>
    /// <param name="AType">
    /// ��� ������
    /// </param>
    /// <returns>
    /// ���������� ���������� � ������ ���� ������
    /// </returns>
    function GetBoxCapacity(const AType: Integer): Integer; overload;
    /// <summary>
    /// ������� ����������� ����������� ���������� ���� ������
    /// ���������� ����
    /// </summary>
    /// <param name="ABox">
    /// �����
    /// </param>
    /// <returns>
    /// ���������� ���������� � ������ ���� ������
    /// </returns>
    function GetBoxCapacity(const ABox: IArchiveBox): Integer; overload;
  end;

implementation

end.
