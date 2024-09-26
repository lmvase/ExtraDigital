unit uEmpresaModel;

interface

uses uModel, Data.Db, uConstants;

type
  TEmpresaModel = class(TModel)
  private
    procedure NewRecord(DataSet: TDataSet);
    procedure InitializeAttributes;

  public
    constructor Create;
  end;

implementation

{ TEmpresaModel }

uses System.SysUtils, uModel.Functions;

constructor TEmpresaModel.Create;
begin
  InitializeAttributes;
  inherited Create;
  FQuery.OnNewRecord := NewRecord;
end;

procedure TEmpresaModel.InitializeAttributes;
begin
  FEntityName := 'CADEMPRESA';
  FPrimaryKeyEntity := 'IDEMPRESA';
  FSequenceName := 'GEN_CADEMPRESA_ID';
  FArrayQueryFilterDeleteLogical := CreateArrayFilterQueryDefaultLogicalDelete;
end;

procedure TEmpresaModel.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('STATIVO').AsString := sSIM;
  DataSet.FieldByName('STEXCLUIDO').AsString := sNAO;
end;



end.
