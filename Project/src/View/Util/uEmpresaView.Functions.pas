unit uEmpresaView.Functions;

interface

uses uConstants, Data.Db, VCL.Graphics;

function GenerateArrayFilterIdEmpresa(const psIdEmpresa: string)
  : TArray<TFilterQuery>;
function GetColorFields(const bEnabled: Boolean): Variant;

implementation

function GenerateArrayFilterIdEmpresa(const psIdEmpresa: string)
  : TArray<TFilterQuery>;
begin
  SetLength(Result, 1);

  Result[0].Key := 'IDEMPRESA';
  Result[0].Value := psIdEmpresa;
  Result[0].Ttype := ftString;
end;

function GetColorFields(const bEnabled: Boolean): Variant;
begin
  if bEnabled then
    Result := clWindow
  else
    Result := clInactiveCaption;
end;

end.
