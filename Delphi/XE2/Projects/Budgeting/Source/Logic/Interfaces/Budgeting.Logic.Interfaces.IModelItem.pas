unit Budgeting.Logic.Interfaces.IModelItem;

interface

uses
  System.Classes;

type
  IModelItem = interface
    //function GetA(): string;

    /// <summary>
    /// ����� ���
    /// </summary>
    property A: string read GetA;
    //function AsArray(): TArray<string>;
  end;

implementation

end.
