unit uIModel;

interface

uses FireDAC.Comp.Client, uConstants, Db;

type
  IModel = interface
    ['{01AC6434-A762-4B7A-9D06-E4DF9B5927BA}']

    procedure NewRecord;
    procedure Edit;
    procedure Cancel;
    procedure Add;
    procedure DeletePhysical;
    procedure DeleteLogical;
    function Get(const psValuePrimaryKey: string): TFDQuery;
  end;

implementation

end.
