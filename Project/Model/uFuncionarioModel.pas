unit uFuncionarioModel;

interface

uses uModel, Firedac.Comp.Client, uDataModule;

type
  TFuncionarioModel = class(TModel)
  public
    constructor Create;

    procedure GetFuncionarioEmpresa(pQuery: TFDQuery;
      const psIdEmpresa: string);
  end;

implementation

{ TFuncionarioModel }

constructor TFuncionarioModel.Create;
begin
  FEntityName := 'CADFUNCIONARIOS';
  FPrimaryKeyEntity := 'IDFUNCIONARIO';
  FSequenceName := 'GEN_CADFUNCIONARIOS_ID';
  inherited Create;
end;

procedure TFuncionarioModel.GetFuncionarioEmpresa(pQuery: TFDQuery;
  const psIdEmpresa: string);
begin
  pQuery.Connection := uDataModule.DataModuleConnect.FDConnection;
  pQuery.Close;
  pQuery.SQL.Clear;
  pQuery.SQL.Add('Select * from ' + FEntityName + ' where IDEMPRESA = ' +
    psIdEmpresa);
  pQuery.Open;
end;

end.
