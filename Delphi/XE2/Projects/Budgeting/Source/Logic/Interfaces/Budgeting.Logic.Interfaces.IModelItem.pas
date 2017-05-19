unit Budgeting.Logic.Interfaces.IModelItem;

interface

uses
  System.Classes;

type
  IModelItem = interface
    function GetA(): string;

    /// <summary>
    /// ����� ���
    /// </summary>
    property A: string read GetA;

    function GetB(): string;
    /// <summary>
    /// ����� ���������� ���
    /// </summary>
    property B: string read GetB;

    function GetC(): string;
    /// <summary>
    /// ����� ���������� ���������
    /// </summary>
    property C: string read GetC;

    function GetD(): string;
    /// <summary>
    /// ����� �������
    /// </summary>
    property D: string read GetD;

    function GetE(): string;
    /// <summary>
    /// ��� ������
    /// </summary>
    property E: string read GetE;

    function GetF(): string;
    /// <summary>
    /// ���� �����
    /// </summary>
    property F: string read GetF;

    function GetG(): string;
    procedure SetG(const aValue: string);
    /// <summary>
    /// ������� �� ������ �������
    /// </summary>
    property G: string read GetG write SetG;

    function GetH(): string;
    procedure SetH(const aValue: string);
    /// <summary>
    /// ������� �� ������
    /// </summary>
    property H: string read GetH write SetH;

    function GetI(): string;
    procedure SetI(const aValue: string);
    /// <summary>
    /// ������� �� ������
    /// </summary>
    property I: string read GetI write SetI;

    function GetJ(): string;
    procedure SetJ(const aValue: string);
    /// <summary>
    /// ������� �� ����� �������
    /// </summary>
    property J: string read GetJ write SetJ;

    function GetK(): string;
    procedure SetK(const aValue: string);
    /// <summary>
    /// ������� �� ������ �������
    /// </summary>
    property K: string read GetK write SetK;

    function GetL(): string;
    procedure SetL(const aValue: string);
    /// <summary>
    /// ������� �� ������
    /// </summary>
    property L: string read GetL write SetL;

    function GetM(): string;
    procedure SetM(const aValue: string);
    /// <summary>
    /// ������� �� ������
    /// </summary>
    property M: string read GetM write SetM;

    function GetN(): string;
    procedure SetN(const aValue: string);
    /// <summary>
    /// ������� �� ����� �������
    /// </summary>
    property N: string read GetN write SetN;

    function AsArray(): TArray<string>;
  end;

implementation

end.
