unit uModel.Logical.Delete.Strategy;

interface

uses uIDeleteStrategy, Data.DB, uModel.Transaction, uConstants;

type
  TModelLogicalDeleteStrategy = class(TInterfacedObject, IDeleteStrategy)

  private
    procedure Execute(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);

  public
    class procedure Delete(pDataSet: TDataSet;
      pArrayQueryFilter: TArray<TFilterQuery>);
  end;

implementation

{ TModelLogicalDeleteStrategy }

uses System.SysUtils;

class procedure TModelLogicalDeleteStrategy.Delete(pDataSet: TDataSet;
  pArrayQueryFilter: TArray<TFilterQuery>);
begin
  TModelTransaction.ExecuteInTransaction(pDataSet,
    procedure(pDataSet: TDataSet)
    var
      oRecord: TFilterQuery;
    begin
      if not(pDataSet.State in dsEditModes) then
        pDataSet.Edit;

      for oRecord in pArrayQueryFilter do
      begin
        if oRecord.Ttype in [ftDate, ftTime, ftDateTime] then
        begin
          pDataSet.FindField(oRecord.Key).Value := Now;
        end
        else
          pDataSet.FindField(oRecord.Key).Value := oRecord.Value;
      end;

      pDataSet.Post;
    end);
end;

procedure TModelLogicalDeleteStrategy.Execute(pDataSet: TDataSet;
  pArrayQueryFilter: TArray<TFilterQuery>);
var
  oStrategy: TModelLogicalDeleteStrategy;
begin
  oStrategy := TModelLogicalDeleteStrategy.Create;
  try
    oStrategy.Delete(pDataSet, pArrayQueryFilter);
  finally
    FreeAndNil(oStrategy);
  end;
end;

end.
