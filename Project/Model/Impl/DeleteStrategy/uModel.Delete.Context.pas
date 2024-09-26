unit uModel.Delete.Context;

interface

uses Data.DB, uIDeleteStrategy, uModel.Physical.Delete.Strategy,
  uModel.Logical.Delete.Strategy, uConstants;

type
  TModelDeleteContext = class
  private
    class function FactoryClass(const pLogical: Boolean): IDeleteStrategy;

  public
    class procedure DeleteRecord(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);
  end;

implementation

{ TModelDeleteContext }

class function TModelDeleteContext.FactoryClass(const pLogical: Boolean)
  : IDeleteStrategy;
begin
  if pLogical then
    Result := TModelLogicalDeleteStrategy.Create
  else
    Result := TModelPhysicalDeleteStrategy.Create;
end;

class procedure TModelDeleteContext.DeleteRecord(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);
var
  oStrategy: IDeleteStrategy;
begin
  oStrategy := FactoryClass(Assigned(pArrayQueryFilter));
  try
    oStrategy.Execute(pDataSet, pArrayQueryFilter);
  finally
    oStrategy := nil;
  end;
end;

end.
