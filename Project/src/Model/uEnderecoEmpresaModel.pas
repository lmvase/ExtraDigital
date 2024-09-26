unit uEnderecoEmpresaModel;

interface

uses uModel, Firedac.Comp.Client, uDataModule, Data.DB, uConstants;

type
  TEnderecoEmpresaModel = class(TModel)
  private
    procedure BeforePost(DataSet: TDataSet);
    function ExistsActiveAdress(const pIdEndereco: Integer;
      pIdEmpresa: Integer): Boolean;
  public
    constructor Create;
  end;

implementation

{ TEnderecoEmpresaModel }

uses System.SysUtils, uModel.Functions;

constructor TEnderecoEmpresaModel.Create;
begin
  FEntityName := 'CADENDERECOS';
  FPrimaryKeyEntity := 'IDENDERECO';
  FSequenceName := 'GEN_CADENDERECOS_ID';
  FArrayQueryFilterDeleteLogical := CreateArrayFilterQueryDefaultLogicalDelete;
  inherited Create;
  FQuery.BeforePost := BeforePost;
end;

procedure TEnderecoEmpresaModel.BeforePost(DataSet: TDataSet);
var
  bExistsActiveAdress: Boolean;
begin
  bExistsActiveAdress := ExistsActiveAdress(DataSet.FieldByName('IDEMPRESA')
    .AsInteger, DataSet.FieldByName('IDENDERECO').AsInteger);

  if (DataSet.FieldByName('STATIVO').AsString = sSIM) and bExistsActiveAdress then
    raise exception.Create('Já existe um endereço ativo.');

  if (DataSet.FieldByName('STATIVO').AsString = sNAO) and (not bExistsActiveAdress) then
    raise exception.Create('Não existe outro endereço ativo.');
end;

function TEnderecoEmpresaModel.ExistsActiveAdress(const pIdEndereco: Integer;
  pIdEmpresa: Integer): Boolean;
var
  oQuery: TFDQuery;
begin
  oQuery := TFDQuery.Create(nil);
  try
    oQuery.Connection := uDataModule.DataModuleConnect.FDConnection;
    oQuery.SQL.Add('Select count(1) as QTDEATIVO from ' + FEntityName);
    oQuery.SQL.Add(' where STATIVO = ' + QuotedStr(sSIM));
    oQuery.SQL.Add(' and IDEMPRESA = ' + pIdEmpresa.ToString);
    oQuery.SQL.Add(' and IDENDERECO <> ' + pIdEndereco.ToString);
    oQuery.Open;

    Result := oQuery.FieldByName('QTDEATIVO').AsInteger > 0;
  finally
    FreeAndNil(oQuery);
  end;
end;

end.
