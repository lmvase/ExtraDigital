unit uModel.Functions;

interface

uses System.SysUtils, FireDAC.Comp.Client, Data.DB, uConstants;

procedure PrepareData(pFDQuery: TFDQuery);
function GenerateFilterSql(pArrayFilter: TArray<TFilterQuery>): string;
function CreateArrayFilterQueryDefaultLogicalDelete: TArray<TFilterQuery>;

implementation

procedure PrepareData(pFDQuery: TFDQuery);
begin
  if pFDQuery.IsEmpty then
    pFDQuery.Append
  else
    pFDQuery.Edit;
end;

function GenerateFilterSql(pArrayFilter: TArray<TFilterQuery>): string;
var
  nRec: Integer;
  oRecord: TFilterQuery;
begin
  Result := EmptyStr;

  for nRec := Low(pArrayFilter) to High(pArrayFilter) do
  begin
    oRecord := pArrayFilter[nRec];

    if nRec = 0 then
      Result := ' where '
    else
      Result := Concat(Result, ' and ');

    if oRecord.Ttype in [ftDate, ftTime, ftDateTime] then
      Result := Concat(Result, oRecord.Key, ' = ', QuotedStr(oRecord.Value))
    else
      Result := Concat(Result, oRecord.Key, ' = ', oRecord.Value);
  end;
end;

function CreateArrayFilterQueryDefaultLogicalDelete: TArray<TFilterQuery>;
begin
  SetLength(Result, 3);

  Result[0].Key := 'STATIVO';
  Result[0].Value := sNAO;
  Result[0].Ttype := ftString;

  Result[1].Key := 'STEXCLUIDO';
  Result[1].Value := sSIM;
  Result[1].Ttype := ftString;

  Result[2].Key := 'DTEXCLUIDO';
  Result[2].Value := EmptyStr;
  Result[2].Ttype := ftDateTime;
end;

end.
