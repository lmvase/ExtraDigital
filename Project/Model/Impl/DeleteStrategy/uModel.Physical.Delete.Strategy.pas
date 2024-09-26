unit uModel.Physical.Delete.Strategy;

interface

uses uIDeleteStrategy, Data.DB, uModel.Transaction, uConstants;

type
  TModelPhysicalDeleteStrategy = class(TInterfacedObject, IDeleteStrategy)

  private
    procedure Execute(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);

  public
    class procedure Delete(pDataSet: TDataSet);
  end;

implementation

{ TModelPhysicalDeleteStrategy }

uses System.SysUtils;

class procedure TModelPhysicalDeleteStrategy.Delete(pDataSet: TDataSet);
begin
  TModelTransaction.ExecuteInTransaction(pDataSet,
    procedure(pDataSet: TDataSet)
    begin
      pDataSet.Delete
    end);
end;

procedure TModelPhysicalDeleteStrategy.Execute(pDataSet: TDataSet;
  pArrayQueryFilter: TArray<TFilterQuery>);
var
  oStrategy: TModelPhysicalDeleteStrategy;
begin
  oStrategy := TModelPhysicalDeleteStrategy.Create;
  try
    oStrategy.Delete(pDataSet);
  finally
    FreeAndNil(oStrategy);
  end;
end;

end.
