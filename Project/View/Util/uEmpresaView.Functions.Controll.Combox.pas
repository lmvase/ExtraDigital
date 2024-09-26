unit uEmpresaView.Functions.Controll.Combox;

interface

uses uConstants, Data.Db, VCL.StdCtrls, uCidadeController, System.SysUtils,
  FireDac.comp.Client, uUFController, Data.Bind.DBScope, uTitularController,
  uEmpresaView.Functions;

type
  TEmpresaViewFunctionsControllCombox = class
  private
    function GetDocument(const psValueDocument: string): string;
    procedure AddItemsComboBox(oDataSet: TFDQuery; pComboBox: TComboBox;
      const psName, psId: string);
  public
    procedure ChangeComboBox(pComboBox: TComboBox; pBindSource: TBindSourceDB;
      const psNameID: string);
    procedure LoadCity(pComboBox: TComboBox);
    procedure LoadUF(pComboBox: TComboBox);
    procedure LoadHolder(pComboBox: TComboBox; const psIdEmpresa: string);
    procedure SetComboBoxIndex(pComboBox: TComboBox; const pId: string);
  end;

implementation

procedure TEmpresaViewFunctionsControllCombox.AddItemsComboBox
  (oDataSet: TFDQuery; pComboBox: TComboBox; const psName, psId: string);
begin
  pComboBox.Items.Clear;
  pComboBox.Items.Add(EmptyStr);

  oDataSet.First;
  while not oDataSet.Eof do
  begin
    pComboBox.Items.AddObject(oDataSet.FieldByName(psName).AsString,
      TObject(oDataSet.FieldByName(psId).AsInteger));
    oDataSet.Next;
  end;
end;

procedure TEmpresaViewFunctionsControllCombox.LoadCity(pComboBox: TComboBox);
var
  oController: TCidadeController;
  oDataSet: TFDQuery;
begin
  oController := TCidadeController.Create;
  try
    oDataSet := oController.Get(EmptyStr);
    AddItemsComboBox(oDataSet, pComboBox, 'NMCIDADE', 'IDCIDADE');
  finally
    FreeAndNil(oController);
  end;
end;

procedure TEmpresaViewFunctionsControllCombox.SetComboBoxIndex
  (pComboBox: TComboBox; const pId: string);
var
  nIndex: Integer;
begin
  if pId.IsEmpty then
  begin
    pComboBox.ItemIndex := 0;
    Exit;
  end;

  for nIndex := 0 to Pred(pComboBox.Items.Count) do
  begin
    if Integer(pComboBox.Items.Objects[nIndex]) = pId.ToInteger then
    begin
      pComboBox.ItemIndex := nIndex;
    end;
  end;
end;

procedure TEmpresaViewFunctionsControllCombox.LoadUF(pComboBox: TComboBox);
var
  oController: TUFController;
  oDataSet: TFDQuery;
begin
  oController := TUFController.Create;
  try
    oDataSet := oController.Get(EmptyStr);
    AddItemsComboBox(oDataSet, pComboBox, 'SGESTADO', 'IDUF');
  finally
    FreeAndNil(oController);
  end;
end;

procedure TEmpresaViewFunctionsControllCombox.ChangeComboBox
  (pComboBox: TComboBox; pBindSource: TBindSourceDB; const psNameID: string);
begin
  if not(pBindSource.DataSet.State in dsEditModes) then
    pBindSource.DataSet.Edit;

  if pComboBox.ItemIndex > 0 then
    pBindSource.DataSet.FieldByName(psNameID).AsInteger :=
      Integer(pComboBox.Items.Objects[pComboBox.ItemIndex])
  else
    pBindSource.DataSet.FieldByName(psNameID).Clear;
end;

function TEmpresaViewFunctionsControllCombox.GetDocument(const psValueDocument
  : string): string;
begin
  Result := EmptyStr;
  if Trim(psValueDocument) <> EmptyStr then
    Result := Concat('CPF/CNPJ: ', psValueDocument, ' - ');
end;

procedure TEmpresaViewFunctionsControllCombox.LoadHolder(pComboBox: TComboBox;
  const psIdEmpresa: string);
var
  oController: TTitularController;
  oDataSet: TFDQuery;
begin
  pComboBox.Items.Clear;
  pComboBox.Items.Add(EmptyStr);

  if psIdEmpresa.IsEmpty then
  begin
    pComboBox.ItemIndex := 0;
    Exit;
  end;

  oController := TTitularController.Create;
  try
    oDataSet := oController.Get(GenerateArrayFilterIdEmpresa(psIdEmpresa));

    oDataSet.First;
    while not oDataSet.Eof do
    begin
      pComboBox.Items.AddObject
        (Concat(GetDocument(oDataSet.FieldByName('NUCNPJCPF').AsString),
        oDataSet.FieldByName('NMTITULAR').AsString),
        TObject(oDataSet.FieldByName('IDTITULAR').AsInteger));

      oDataSet.Next;
    end;

  finally
    FreeAndNil(oController);
  end;
end;

end.
