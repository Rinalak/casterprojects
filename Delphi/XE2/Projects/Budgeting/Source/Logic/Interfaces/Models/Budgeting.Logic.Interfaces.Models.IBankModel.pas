unit Budgeting.Logic.Interfaces.Models.IBankModel;

interface

uses
  Budgeting.Logic.Interfaces.Models.ICustomModel;

type
  IBankModel = interface(ICustomModel)
    ['{A9DC8C39-E9DA-48BD-A17E-347217AE614F}']
    function GetName(): string;
    property name: string read GetName;

    function GetCode(): string;
    property Code: string read GetCode;

    function GetAddress(): string;
    property Address: string read GetAddress;

    function GetActivity(): Boolean;
    property Activity: Boolean read GetActivity;
  end;

implementation

end.
