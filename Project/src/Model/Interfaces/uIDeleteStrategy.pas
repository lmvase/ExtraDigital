unit uIDeleteStrategy;

interface

uses Data.DB, FireDAC.Comp.Client, uConstants;

type
  IDeleteStrategy = interface
    ['{60FD4EDC-3869-48B8-ADCC-AFC94FE083CF}']
    procedure Execute(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);
  end;

implementation

end.
