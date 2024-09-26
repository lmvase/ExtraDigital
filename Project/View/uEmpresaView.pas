unit uEmpresaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.StdCtrls, Data.Bind.Components, Data.Bind.DBScope, uEmpresaController,
  System.Rtti, System.Bindings.Outputs, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.Bind.Editors, Vcl.ComCtrls, Data.Bind.Controls, Vcl.Buttons,
  Vcl.Bind.Navigator, uFuncionarioController, Data.Bind.Grid, Vcl.Bind.Grid,
  uEnderecoEmpresaController, uConstants,
  uEmpresaView.Functions.Controll.Combox;

type
  TFEmpresaView = class(TForm)
    PageControl1: TPageControl;
    TabSheetCadastroEmpresa: TTabSheet;
    edtNomeEmpresa: TLabeledEdit;
    edtCnpj: TLabeledEdit;
    edtIdEmpresa: TLabeledEdit;
    edtInscricao: TLabeledEdit;
    edtAtivo: TLabeledEdit;
    edtDataCadastro: TLabeledEdit;
    edtDataAbertura: TLabeledEdit;
    edtTelefoneComercial: TLabeledEdit;
    edtTelefoneCelular: TLabeledEdit;
    edtObservacao: TLabeledEdit;
    edtEMail: TLabeledEdit;
    edtExcluido: TLabeledEdit;
    edtDataExcluido: TLabeledEdit;
    BindingsListEmpresa: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    BindSourceDBEmpresa: TBindSourceDB;
    btnSalvarEmpresa: TButton;
    btnExcluirEmpresa: TButton;
    btnNovoEmpresa: TButton;
    BindSourceDBFuncionario: TBindSourceDB;
    FDQueryFuncionario: TFDQuery;
    BindingsListFuncionario: TBindingsList;

    TabSheetEndereco: TTabSheet;
    TabSheet3: TTabSheet;
    StringGridFuncionario: TStringGrid;
    LinkGridToDataSourceFuncionario: TLinkGridToDataSource;
    BindSourceDBEndereco: TBindSourceDB;
    BindingsListEndereco: TBindingsList;
    edtIDENDERECO: TLabeledEdit;
    edtEndNMENDERECO: TLabeledEdit;
    edtEndNUENDERECO: TLabeledEdit;
    edtEndNMBAIRRO: TLabeledEdit;
    edtEndNUCEP: TLabeledEdit;
    edtEndSTATIVO: TLabeledEdit;
    edtEndSTEXCLUIDO: TLabeledEdit;
    edtEndDTEXCLUIDO: TLabeledEdit;
    edtEndTPCADASTRO: TLabeledEdit;
    LinkControlToField17: TLinkControlToField;
    LinkControlToField18: TLinkControlToField;
    LinkControlToField19: TLinkControlToField;
    LinkControlToField22: TLinkControlToField;
    LinkControlToField23: TLinkControlToField;
    LinkControlToField24: TLinkControlToField;
    LinkControlToField25: TLinkControlToField;
    LinkControlToField26: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    StringGridEnderecoEmpresa: TStringGrid;
    LinkGridToDataSourceEnderecoEmpresa: TLinkGridToDataSource;
    btnNovoEndereco: TButton;
    btnSalvarEndereco: TButton;
    btnExclusaoLogicaEndereco: TButton;
    btnExclusaoFisicaEndereco: TButton;
    Label1: TLabel;
    cbBoxCidade: TComboBox;
    cbBoxUF: TComboBox;
    Label2: TLabel;
    cbBoxTitular: TComboBox;
    Label3: TLabel;
    BindNavigator1: TBindNavigator;
    lbNomeEmpresa: TLabeledEdit;
    LinkLbEmpresa: TLinkControlToField;
    btnEditarEmpresa: TButton;
    btnCancelarEmpresa: TButton;
    btnEditarEndereco: TButton;
    btnCancelarEndereco: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoEmpresaClick(Sender: TObject);
    procedure btnSalvarEmpresaClick(Sender: TObject);
    procedure btnExcluirEmpresaClick(Sender: TObject);
    procedure btnNovoEnderecoClick(Sender: TObject);
    procedure btnSalvarEnderecoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExclusaoLogicaEnderecoClick(Sender: TObject);
    procedure btnExclusaoFisicaEnderecoClick(Sender: TObject);
    procedure cbBoxCidadeChange(Sender: TObject);
    procedure cbBoxUFChange(Sender: TObject);
    procedure cbBoxTitularChange(Sender: TObject);
    procedure TabSheetCadastroEmpresaShow(Sender: TObject);
    procedure btnEditarEmpresaClick(Sender: TObject);
    procedure btnCancelarEmpresaClick(Sender: TObject);
    procedure btnEditarEnderecoClick(Sender: TObject);
    procedure btnCancelarEnderecoClick(Sender: TObject);
    procedure TabSheetEnderecoShow(Sender: TObject);
  private
    { Private declarations }
    FControllerEmpresa: TEmpresaController;
    FControllerFuncionario: TFuncionarioController;
    FControllerEnderecoEmpresa: TEnderecoEmpresaController;
    FFunctionsControllComboBox: TEmpresaViewFunctionsControllCombox;
    procedure LoadFuncionario;
    procedure AfterScrollEmpresa(DataSet: TDataSet);
    procedure LoadEnderecoEmpresa;
    procedure NewRecordEnderecoEmpresa(DataSet: TDataSet);
    procedure AfterScrollEnderecoEmpresa(DataSet: TDataSet);
    procedure LoadHolder;
    procedure EnabledControllEmpresa(const bEnabled: Boolean);
    procedure setFocusNomeEmpresa;
    procedure setFocusEndereco;
    procedure EnabledControllEndereco(const bEnabled: Boolean);
  public
    { Public declarations }
  end;

var
  FEmpresaView: TFEmpresaView;

implementation

{$R *.dfm}

uses uEmpresaView.Functions, uView.Persist.Controll.Functions;

procedure TFEmpresaView.FormCreate(Sender: TObject);
begin
  FFunctionsControllComboBox := TEmpresaViewFunctionsControllCombox.Create;
  FFunctionsControllComboBox.LoadCity(cbBoxCidade);
  FFunctionsControllComboBox.LoadUF(cbBoxUF);

  FControllerEmpresa := TEmpresaController.Create;
  BindSourceDBEmpresa.DataSet := FControllerEmpresa.Get(string.Empty);
  BindSourceDBEmpresa.DataSet.AfterScroll := AfterScrollEmpresa;
  LoadHolder;

  FControllerFuncionario := TFuncionarioController.Create;
  BindSourceDBFuncionario.DataSet := FDQueryFuncionario;
  LoadFuncionario;

  FControllerEnderecoEmpresa := TEnderecoEmpresaController.Create;
  BindSourceDBEndereco.DataSet := FControllerEnderecoEmpresa.Get
    (GenerateArrayFilterIdEmpresa(BindSourceDBEmpresa.DataSet.FieldByName
    ('IDEMPRESA').AsString));
  BindSourceDBEndereco.DataSet.OnNewRecord := NewRecordEnderecoEmpresa;
  BindSourceDBEndereco.DataSet.AfterScroll := AfterScrollEnderecoEmpresa;
  AfterScrollEnderecoEmpresa(BindSourceDBEndereco.DataSet);
end;

procedure TFEmpresaView.LoadHolder;
begin
  if IsDataSetActive(BindSourceDBEmpresa.DataSet) then
    FFunctionsControllComboBox.LoadHolder(cbBoxTitular,
      BindSourceDBEmpresa.DataSet.FieldByName('IDEMPRESA').AsString);
end;

procedure TFEmpresaView.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFunctionsControllComboBox);
  FreeAndNil(FControllerFuncionario);
  FreeAndNil(FControllerEnderecoEmpresa);
  FreeAndNil(FControllerEmpresa);

  inherited;
end;

procedure TFEmpresaView.FormShow(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
end;

// Empresa
procedure TFEmpresaView.btnNovoEmpresaClick(Sender: TObject);
begin
  BindSourceDBEmpresa.DataSet.AfterScroll := nil;
  try
    NewRecord(FControllerEmpresa);

    EnabledControllEmpresa(True);

    btnNovoEmpresa.Enabled := False;
    btnSalvarEmpresa.Enabled := True;
    btnCancelarEmpresa.Enabled := True;
    btnEditarEmpresa.Enabled := False;
    btnExcluirEmpresa.Enabled := False;

    setFocusNomeEmpresa;
  finally
    BindSourceDBEmpresa.DataSet.AfterScroll := AfterScrollEmpresa;
  end;
end;

procedure TFEmpresaView.btnSalvarEmpresaClick(Sender: TObject);
begin
  EnabledControllEmpresa(False);

  btnSalvarEmpresa.Enabled := False;
  btnCancelarEmpresa.Enabled := False;
  btnNovoEmpresa.Enabled := True;
  btnEditarEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnExcluirEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);

  Save(FControllerEmpresa);
end;

procedure TFEmpresaView.btnEditarEmpresaClick(Sender: TObject);
begin
  btnEditarEmpresa.Enabled := False;

  Edit(FControllerEmpresa);

  EnabledControllEmpresa(True);

  btnNovoEmpresa.Enabled := False;
  btnSalvarEmpresa.Enabled := True;
  btnCancelarEmpresa.Enabled := True;
  btnExcluirEmpresa.Enabled := False;

  setFocusNomeEmpresa;
end;

procedure TFEmpresaView.btnCancelarEmpresaClick(Sender: TObject);
begin
  EnabledControllEmpresa(False);

  btnSalvarEmpresa.Enabled := False;
  btnCancelarEmpresa.Enabled := False;

  Cancel(FControllerEmpresa);

  btnNovoEmpresa.Enabled := True;
  btnEditarEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnExcluirEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
end;

procedure TFEmpresaView.btnExcluirEmpresaClick(Sender: TObject);
begin
  EnabledControllEmpresa(False);

  btnSalvarEmpresa.Enabled := False;
  btnCancelarEmpresa.Enabled := False;

  DeleteLogical(FControllerEmpresa);

  btnNovoEmpresa.Enabled := True;
  btnEditarEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnExcluirEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
end;

procedure TFEmpresaView.setFocusNomeEmpresa;
begin
  if edtNomeEmpresa.CanFocus then
    edtNomeEmpresa.SetFocus;
end;

procedure TFEmpresaView.AfterScrollEmpresa(DataSet: TDataSet);
begin
  LoadEnderecoEmpresa;
  LoadFuncionario;
end;

procedure TFEmpresaView.EnabledControllEmpresa(const bEnabled: Boolean);
var
  oColor: Variant;
begin
  edtNomeEmpresa.Enabled := bEnabled;
  edtCnpj.Enabled := bEnabled;
  edtIdEmpresa.Enabled := bEnabled;
  edtInscricao.Enabled := bEnabled;
  edtAtivo.Enabled := bEnabled;
  edtDataCadastro.Enabled := bEnabled;
  edtDataAbertura.Enabled := bEnabled;
  edtTelefoneComercial.Enabled := bEnabled;
  edtTelefoneCelular.Enabled := bEnabled;
  edtObservacao.Enabled := bEnabled;
  edtEMail.Enabled := bEnabled;
  edtExcluido.Enabled := bEnabled;
  edtDataExcluido.Enabled := bEnabled;

  oColor := GetColorFields(bEnabled);

  edtNomeEmpresa.Color := oColor;
  edtCnpj.Color := oColor;
  edtIdEmpresa.Color := oColor;
  edtInscricao.Color := oColor;
  edtAtivo.Color := oColor;
  edtDataCadastro.Color := oColor;
  edtDataAbertura.Color := oColor;
  edtTelefoneComercial.Color := oColor;
  edtTelefoneCelular.Color := oColor;
  edtObservacao.Color := oColor;
  edtEMail.Color := oColor;
  edtExcluido.Color := oColor;
  edtDataExcluido.Color := oColor;
end;

procedure TFEmpresaView.TabSheetCadastroEmpresaShow(Sender: TObject);
begin
  EnabledControllEmpresa(False);
  btnNovoEmpresa.Enabled := True;
  btnSalvarEmpresa.Enabled := False;
  btnExcluirEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnEditarEmpresa.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnCancelarEmpresa.Enabled := False;
end;
// ---

// Endereços Empresa
procedure TFEmpresaView.TabSheetEnderecoShow(Sender: TObject);
begin
  EnabledControllEndereco(False);
  btnNovoEndereco.Enabled := True;
  btnSalvarEndereco.Enabled := False;
  btnExclusaoLogicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEmpresa.DataSet);
  btnCancelarEndereco.Enabled := False;
end;

procedure TFEmpresaView.setFocusEndereco;
begin
  if edtEndNMENDERECO.CanFocus then
    edtEndNMENDERECO.SetFocus;
end;

procedure TFEmpresaView.EnabledControllEndereco(const bEnabled: Boolean);
var
  oColor: Variant;
begin
  edtIDENDERECO.Enabled := bEnabled;
  edtEndNMENDERECO.Enabled := bEnabled;
  edtEndNUENDERECO.Enabled := bEnabled;
  edtEndNMBAIRRO.Enabled := bEnabled;
  edtEndNUCEP.Enabled := bEnabled;
  edtEndSTATIVO.Enabled := bEnabled;
  edtEndSTEXCLUIDO.Enabled := bEnabled;
  edtEndDTEXCLUIDO.Enabled := bEnabled;
  edtEndTPCADASTRO.Enabled := bEnabled;
  cbBoxCidade.Enabled := bEnabled;
  cbBoxUF.Enabled := bEnabled;
  cbBoxTitular.Enabled := bEnabled;

  oColor := GetColorFields(bEnabled);

  edtIDENDERECO.Color := oColor;
  edtEndNMENDERECO.Color := oColor;
  edtEndNUENDERECO.Color := oColor;
  edtEndNMBAIRRO.Color := oColor;
  edtEndNUCEP.Color := oColor;
  edtEndSTATIVO.Color := oColor;
  edtEndSTEXCLUIDO.Color := oColor;
  edtEndDTEXCLUIDO.Color := oColor;
  edtEndTPCADASTRO.Color := oColor;
  cbBoxCidade.Color := oColor;
  cbBoxUF.Color := oColor;
  cbBoxTitular.Color := oColor;
end;

procedure TFEmpresaView.btnNovoEnderecoClick(Sender: TObject);
begin
  BindSourceDBEndereco.DataSet.AfterScroll := nil;
  try
    NewRecord(FControllerEnderecoEmpresa);

    EnabledControllEndereco(True);

    btnNovoEndereco.Enabled := False;
    btnSalvarEndereco.Enabled := True;
    btnCancelarEndereco.Enabled := True;
    btnEditarEndereco.Enabled := False;
    btnExclusaoLogicaEndereco.Enabled := False;
    btnExclusaoFisicaEndereco.Enabled := False;

    setFocusEndereco;
  finally
    BindSourceDBEndereco.DataSet.AfterScroll := AfterScrollEnderecoEmpresa;
  end;
end;

procedure TFEmpresaView.btnEditarEnderecoClick(Sender: TObject);
begin
  btnEditarEndereco.Enabled := False;

  Edit(FControllerEnderecoEmpresa);

  EnabledControllEndereco(True);

  btnNovoEndereco.Enabled := False;
  btnSalvarEndereco.Enabled := True;
  btnCancelarEndereco.Enabled := True;
  btnExclusaoLogicaEndereco.Enabled := False;
  btnExclusaoFisicaEndereco.Enabled := False;

  setFocusEndereco;
end;

procedure TFEmpresaView.btnSalvarEnderecoClick(Sender: TObject);
begin
  EnabledControllEndereco(False);

  btnSalvarEndereco.Enabled := False;
  btnCancelarEndereco.Enabled := False;
  btnNovoEndereco.Enabled := True;
  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoLogicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);

  Save(FControllerEnderecoEmpresa);
end;

procedure TFEmpresaView.btnCancelarEnderecoClick(Sender: TObject);
begin
  EnabledControllEndereco(False);

  btnSalvarEndereco.Enabled := False;
  btnCancelarEndereco.Enabled := False;

  Cancel(FControllerEnderecoEmpresa);

  btnNovoEndereco.Enabled := True;
  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoLogicaEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
end;

procedure TFEmpresaView.btnExclusaoFisicaEnderecoClick(Sender: TObject);
begin
  EnabledControllEndereco(False);

  btnSalvarEndereco.Enabled := False;
  btnCancelarEndereco.Enabled := False;

  DeletePhysical(FControllerEnderecoEmpresa);

  btnNovoEndereco.Enabled := True;
  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoLogicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
end;

procedure TFEmpresaView.btnExclusaoLogicaEnderecoClick(Sender: TObject);
begin
  EnabledControllEndereco(False);

  btnSalvarEndereco.Enabled := False;
  btnCancelarEndereco.Enabled := False;

  DeleteLogical(FControllerEnderecoEmpresa);

  btnNovoEndereco.Enabled := True;
  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoLogicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
end;

procedure TFEmpresaView.LoadEnderecoEmpresa;
begin
  if IsDataSetActive(BindSourceDBEmpresa.DataSet) then
  begin
    FControllerEnderecoEmpresa.Get
      (GenerateArrayFilterIdEmpresa(BindSourceDBEmpresa.DataSet.FieldByName
      ('IDEMPRESA').AsString));
  end;
end;

procedure TFEmpresaView.NewRecordEnderecoEmpresa(DataSet: TDataSet);
begin
  DataSet.FieldByName('IDEMPRESA').AsInteger :=
    BindSourceDBEmpresa.DataSet.FieldByName('IDEMPRESA').AsInteger;
  DataSet.FieldByName('STATIVO').AsString := sSIM;
  DataSet.FieldByName('STEXCLUIDO').AsString := sNAO;
  // UTILIZEI A LETRA QUE ESTAVA NO BANCO
  DataSet.FieldByName('TPCADASTRO').AsString := 'P';
end;

procedure TFEmpresaView.AfterScrollEnderecoEmpresa(DataSet: TDataSet);
begin
  with FFunctionsControllComboBox do
  begin
    SetComboBoxIndex(cbBoxCidade, DataSet.FieldByName('IDCIDADE').AsString);
    SetComboBoxIndex(cbBoxUF, DataSet.FieldByName('IDUF').AsString);
    LoadHolder(cbBoxTitular, DataSet.FieldByName('IDEMPRESA').AsString);
    SetComboBoxIndex(cbBoxTitular, DataSet.FieldByName('IDTITULAR').AsString)
  end;

  btnEditarEndereco.Enabled := IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoLogicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
  btnExclusaoFisicaEndereco.Enabled :=
    IsDataSetActive(BindSourceDBEndereco.DataSet);
end;

procedure TFEmpresaView.cbBoxCidadeChange(Sender: TObject);
begin
  FFunctionsControllComboBox.ChangeComboBox(cbBoxCidade, BindSourceDBEndereco,
    'IDCIDADE');
end;

procedure TFEmpresaView.cbBoxUFChange(Sender: TObject);
begin
  FFunctionsControllComboBox.ChangeComboBox(cbBoxUF,
    BindSourceDBEndereco, 'IDUF');
end;

procedure TFEmpresaView.cbBoxTitularChange(Sender: TObject);
begin
  FFunctionsControllComboBox.ChangeComboBox(cbBoxTitular, BindSourceDBEndereco,
    'IDTITULAR');
end;
// ----

// Funcionários
procedure TFEmpresaView.LoadFuncionario;
begin
  var
    DataSetEmpresa: TDataSet := BindSourceDBEmpresa.DataSet;

  if IsDataSetActive(DataSetEmpresa) then
  begin
    FControllerFuncionario.GetFuncionarioEmpresa(FDQueryFuncionario,
      DataSetEmpresa.FieldByName('IDEMPRESA').AsString);
  end;
end;
// ---

end.
