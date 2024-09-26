unit uModel;

interface

uses uIModel, FireDAC.Comp.Client, System.Classes, System.SysUtils, uDataModule,
  uConstants, Data.Db, uModel.Transaction, uModel.Delete.Context;

type
  TModel = class(TInterfacedObject, IModel)
  private
    function GenerateKey: Integer;
    function UpadtePrimaryKey(pDataSet: TDataSet): Integer;
    function GetValuePrimaryKey(pFieldPrimaryKey: TField): Integer;

  protected
    FEntityName: string;
    FPrimaryKeyEntity: string;
    FSequenceName: string;
    FQuery: TFDQuery;
    FArrayQueryFilterDeleteLogical: TArray<TFilterQuery>;

  public
    constructor Create;
    destructor Destroy; override;
    procedure NewRecord;
    procedure Add;
    procedure Edit;
    procedure Cancel;
    procedure DeletePhysical;
    procedure DeleteLogical;
    function Get(const psValuePrimaryKey: string): TFDQuery; overload;
    function Get(pArrayFilter: TArray<TFilterQuery>): TFDQuery; overload;
  end;

implementation

{ TModelImpl }

uses uModel.Functions;

procedure TModel.Cancel;
begin
  FQuery.Cancel;
end;

constructor TModel.Create;
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := DataModuleConnect.FDConnection;
end;

destructor TModel.Destroy;
begin
  FQuery.Close;
  FQuery.Connection := nil;
  FreeAndNil(FQuery);
  inherited;
end;

procedure TModel.Edit;
begin
  FQuery.Edit;
end;

procedure TModel.NewRecord;
begin
  FQuery.Append;
end;

procedure TModel.Add;
begin
  TModelTransaction.ExecuteInTransaction(FQuery,
    procedure(pDataSet: TDataSet)
    begin
      UpadtePrimaryKey(FQuery);
      FQuery.Post;
    end);
end;

procedure TModel.DeleteLogical;
begin
  if not Assigned(FArrayQueryFilterDeleteLogical) then
    raise Exception.Create('Array não preenchido.');

  TModelDeleteContext.DeleteRecord(FQuery, FArrayQueryFilterDeleteLogical);
end;

procedure TModel.DeletePhysical;
begin
  TModelDeleteContext.DeleteRecord(FQuery, nil);
  FQuery.Refresh;
end;

function TModel.Get(const psValuePrimaryKey: string): TFDQuery;
begin
  FQuery.Close;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('Select * from ' + FEntityName);
  if not psValuePrimaryKey.IsEmpty then
    FQuery.SQL.Add(' where ' + FPrimaryKeyEntity + ' = ' + psValuePrimaryKey);

  FQuery.Open();

  Result := FQuery;
end;

function TModel.Get(pArrayFilter: TArray<TFilterQuery>): TFDQuery;
begin
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('Select * from ' + FEntityName);
  FQuery.SQL.Add(GenerateFilterSql(pArrayFilter));
  FQuery.Open;

  Result := FQuery;
end;

function TModel.UpadtePrimaryKey(pDataSet: TDataSet): Integer;
var
  nPrimaryKey: Integer;
begin
  nPrimaryKey := GetValuePrimaryKey(pDataSet.FindField(FPrimaryKeyEntity));

  if pDataSet.FindField(FPrimaryKeyEntity).IsNull then
  begin
    if not(pDataSet.State in dsEditModes) then
      pDataSet.Edit;
    pDataSet.FindField(FPrimaryKeyEntity).AsInteger := nPrimaryKey;
  end;

  Result := nPrimaryKey;
end;

function TModel.GetValuePrimaryKey(pFieldPrimaryKey: TField): Integer;
begin
  if pFieldPrimaryKey.IsNull then
    Result := GenerateKey
  else
    Result := pFieldPrimaryKey.AsInteger;
end;

function TModel.GenerateKey: Integer;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := DataModuleConnect.FDConnection;

    FDQuery.SQL.Text := 'select GEN_ID(' + FSequenceName +
      ', 1) as NEWKEY from RDB$DATABASE';

    FDQuery.Open;

    Result := FDQuery.FieldByName('NEWKEY').AsInteger;
  finally
    FreeAndNil(FDQuery);
  end;
end;

end.
