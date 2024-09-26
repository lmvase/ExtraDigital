unit uIController;

interface

uses Db, Firedac.Comp.Client;

type
  IController = interface
    ['{A7B06166-C3D2-43A0-8907-FA0C7F3442B5}']

    function New: string;
    function Edit: string;
    function Cancel: string;
    function Add: string;
    function Get(const psKey: string): TFDQuery;
    function DeletePhysical: string;
    function DeleteLogical: string;

  end;

implementation

end.
