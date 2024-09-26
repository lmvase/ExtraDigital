unit uModel.Transaction;

interface

uses FireDAC.Comp.Client, System.Classes, System.SysUtils, uDataModule, Data.DB;

type
  TModelTransaction = class

  public
    class procedure ExecuteInTransaction(pDataSet: TDataSet;
      pMethod: TProc<TDataSet>);
  end;

implementation

class procedure TModelTransaction.ExecuteInTransaction(pDataSet: TDataSet;
  pMethod: TProc<TDataSet>);
var
  oTransaction: TFDTransaction;
begin
  oTransaction := TFDTransaction.Create(nil);
  try
    oTransaction.Connection := DataModuleConnect.FDConnection;

    (pDataSet as TFDQuery).Transaction := oTransaction;

    try
      if not oTransaction.Active then
        oTransaction.StartTransaction;

      pMethod(pDataSet);

      oTransaction.Commit;
    except
      on E: Exception do
      begin
        if oTransaction.Active then
          oTransaction.Rollback;

        raise;
      end;
    end;
  finally
    (pDataSet as TFDQuery).Transaction := nil;
    FreeAndNil(oTransaction);
  end;
end;

end.
