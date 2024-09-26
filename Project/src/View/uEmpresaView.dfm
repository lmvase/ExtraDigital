object FEmpresaView: TFEmpresaView
  Left = 0
  Top = 0
  Caption = 'FEmpresaView'
  ClientHeight = 517
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 8
    Top = 68
    Width = 1089
    Height = 441
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheetCadastroEmpresa: TTabSheet
      Caption = 'Cadastro Empresa'
      ImageIndex = 1
      OnShow = TabSheetCadastroEmpresaShow
      object edtNomeEmpresa: TLabeledEdit
        Left = 8
        Top = 88
        Width = 300
        Height = 23
        EditLabel.Width = 81
        EditLabel.Height = 15
        EditLabel.Caption = 'Nome Empresa'
        TabOrder = 0
        Text = ''
      end
      object edtCnpj: TLabeledEdit
        Left = 325
        Top = 88
        Width = 300
        Height = 23
        EditLabel.Width = 27
        EditLabel.Height = 15
        EditLabel.Caption = 'CNPJ'
        MaxLength = 18
        TabOrder = 1
        Text = '  .   .   /    -  '
      end
      object edtIdEmpresa: TLabeledEdit
        Left = 8
        Top = 32
        Width = 100
        Height = 23
        TabStop = False
        EditLabel.Width = 55
        EditLabel.Height = 15
        EditLabel.Caption = 'IdEmpresa'
        ReadOnly = True
        TabOrder = 16
        Text = ''
      end
      object edtInscricao: TLabeledEdit
        Left = 8
        Top = 136
        Width = 300
        Height = 23
        EditLabel.Width = 47
        EditLabel.Height = 15
        EditLabel.Caption = 'Inscri'#231#227'o'
        TabOrder = 2
        Text = ''
      end
      object edtAtivo: TLabeledEdit
        Left = 325
        Top = 136
        Width = 300
        Height = 23
        EditLabel.Width = 28
        EditLabel.Height = 15
        EditLabel.Caption = 'Ativo'
        TabOrder = 3
        Text = ''
      end
      object edtDataCadastro: TLabeledEdit
        Left = 8
        Top = 184
        Width = 300
        Height = 23
        EditLabel.Width = 72
        EditLabel.Height = 15
        EditLabel.Caption = 'Data cadastro'
        TabOrder = 4
        Text = ''
      end
      object edtDataAbertura: TLabeledEdit
        Left = 325
        Top = 184
        Width = 300
        Height = 23
        EditLabel.Width = 71
        EditLabel.Height = 15
        EditLabel.Caption = 'Data abertura'
        TabOrder = 5
        Text = ''
      end
      object edtTelefoneComercial: TLabeledEdit
        Left = 8
        Top = 232
        Width = 300
        Height = 23
        EditLabel.Width = 100
        EditLabel.Height = 15
        EditLabel.Caption = 'Telefone comercial'
        TabOrder = 6
        Text = ''
      end
      object edtTelefoneCelular: TLabeledEdit
        Left = 325
        Top = 232
        Width = 300
        Height = 23
        EditLabel.Width = 83
        EditLabel.Height = 15
        EditLabel.Caption = 'Telefone celular'
        TabOrder = 7
        Text = ''
      end
      object edtObservacao: TLabeledEdit
        Left = 8
        Top = 280
        Width = 300
        Height = 23
        EditLabel.Width = 36
        EditLabel.Height = 15
        EditLabel.Caption = 'TXOBS'
        TabOrder = 8
        Text = ''
      end
      object edtEMail: TLabeledEdit
        Left = 325
        Top = 280
        Width = 300
        Height = 23
        EditLabel.Width = 34
        EditLabel.Height = 15
        EditLabel.Caption = 'E-mail'
        TabOrder = 9
        Text = ''
      end
      object edtExcluido: TLabeledEdit
        Left = 8
        Top = 324
        Width = 300
        Height = 23
        EditLabel.Width = 44
        EditLabel.Height = 15
        EditLabel.Caption = 'Exclu'#237'do'
        TabOrder = 10
        Text = ''
      end
      object edtDataExcluido: TLabeledEdit
        Left = 325
        Top = 324
        Width = 300
        Height = 23
        EditLabel.Width = 71
        EditLabel.Height = 15
        EditLabel.Caption = 'Data exclu'#237'do'
        TabOrder = 11
        Text = ''
      end
      object btnSalvarEmpresa: TButton
        Left = 213
        Top = 369
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 14
        OnClick = btnSalvarEmpresaClick
      end
      object btnExcluirEmpresa: TButton
        Left = 412
        Top = 369
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 17
        OnClick = btnExcluirEmpresaClick
      end
      object btnNovoEmpresa: TButton
        Left = 8
        Top = 369
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 12
        OnClick = btnNovoEmpresaClick
      end
      object btnEditarEmpresa: TButton
        Left = 112
        Top = 369
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 13
        OnClick = btnEditarEmpresaClick
      end
      object btnCancelarEmpresa: TButton
        Left = 311
        Top = 369
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 15
        OnClick = btnCancelarEmpresaClick
      end
    end
    object TabSheetEndereco: TTabSheet
      Caption = 'Cadastro Endere'#231'os'
      ImageIndex = 1
      OnShow = TabSheetEnderecoShow
      object Label1: TLabel
        Left = 16
        Top = 217
        Width = 37
        Height = 15
        Caption = 'Cidade'
      end
      object Label2: TLabel
        Left = 16
        Top = 268
        Width = 14
        Height = 15
        Caption = 'UF'
      end
      object Label3: TLabel
        Left = 16
        Top = 320
        Width = 34
        Height = 15
        Caption = 'Titular'
      end
      object edtIDENDERECO: TLabeledEdit
        Left = 16
        Top = 25
        Width = 100
        Height = 23
        TabStop = False
        EditLabel.Width = 59
        EditLabel.Height = 15
        EditLabel.Caption = 'IdEndereco'
        ReadOnly = True
        TabOrder = 0
        Text = ''
      end
      object edtEndNMENDERECO: TLabeledEdit
        Left = 16
        Top = 81
        Width = 180
        Height = 23
        EditLabel.Width = 49
        EditLabel.Height = 15
        EditLabel.Caption = 'Endere'#231'o'
        TabOrder = 1
        Text = ''
      end
      object edtEndNUENDERECO: TLabeledEdit
        Left = 16
        Top = 129
        Width = 180
        Height = 23
        EditLabel.Width = 44
        EditLabel.Height = 15
        EditLabel.Caption = 'N'#250'mero'
        TabOrder = 2
        Text = ''
      end
      object edtEndNMBAIRRO: TLabeledEdit
        Left = 16
        Top = 180
        Width = 180
        Height = 23
        EditLabel.Width = 31
        EditLabel.Height = 15
        EditLabel.Caption = 'Bairro'
        TabOrder = 3
        Text = ''
      end
      object edtEndNUCEP: TLabeledEdit
        Left = 224
        Top = 81
        Width = 180
        Height = 23
        EditLabel.Width = 21
        EditLabel.Height = 15
        EditLabel.Caption = 'CEP'
        TabOrder = 6
        Text = ''
      end
      object edtEndSTATIVO: TLabeledEdit
        Left = 224
        Top = 129
        Width = 180
        Height = 23
        EditLabel.Width = 28
        EditLabel.Height = 15
        EditLabel.Caption = 'Ativo'
        TabOrder = 7
        Text = ''
      end
      object edtEndSTEXCLUIDO: TLabeledEdit
        Left = 224
        Top = 180
        Width = 180
        Height = 23
        EditLabel.Width = 44
        EditLabel.Height = 15
        EditLabel.Caption = 'Exclu'#237'do'
        TabOrder = 8
        Text = ''
      end
      object edtEndDTEXCLUIDO: TLabeledEdit
        Left = 224
        Top = 233
        Width = 180
        Height = 23
        EditLabel.Width = 71
        EditLabel.Height = 15
        EditLabel.Caption = 'Data Exclu'#237'do'
        TabOrder = 9
        Text = ''
      end
      object edtEndTPCADASTRO: TLabeledEdit
        Left = 224
        Top = 286
        Width = 180
        Height = 23
        EditLabel.Width = 75
        EditLabel.Height = 15
        EditLabel.Caption = 'TPCADASTRO'
        TabOrder = 10
        Text = ''
      end
      object StringGridEnderecoEmpresa: TStringGrid
        Tag = 3
        Left = 424
        Top = 81
        Width = 641
        Height = 278
        ColCount = 3
        FixedCols = 0
        RowCount = 2
        TabOrder = 18
        ColWidths = (
          388
          94
          94)
        ColAligments = (
          0
          0
          0)
      end
      object btnNovoEndereco: TButton
        Left = 16
        Top = 375
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 12
        OnClick = btnNovoEnderecoClick
      end
      object btnSalvarEndereco: TButton
        Left = 211
        Top = 375
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 14
        OnClick = btnSalvarEnderecoClick
      end
      object btnExclusaoLogicaEndereco: TButton
        Left = 409
        Top = 375
        Width = 113
        Height = 25
        Caption = 'Excluir (L'#243'gico)'
        TabOrder = 16
        OnClick = btnExclusaoLogicaEnderecoClick
      end
      object btnExclusaoFisicaEndereco: TButton
        Left = 545
        Top = 375
        Width = 113
        Height = 25
        Caption = 'Excluir (F'#237'sico)'
        TabOrder = 17
        OnClick = btnExclusaoFisicaEnderecoClick
      end
      object cbBoxCidade: TComboBox
        Left = 16
        Top = 233
        Width = 180
        Height = 22
        Style = csOwnerDrawFixed
        Sorted = True
        TabOrder = 4
        OnChange = cbBoxCidadeChange
      end
      object cbBoxUF: TComboBox
        Left = 16
        Top = 286
        Width = 180
        Height = 22
        Style = csOwnerDrawFixed
        Sorted = True
        TabOrder = 5
        OnChange = cbBoxUFChange
      end
      object cbBoxTitular: TComboBox
        Left = 16
        Top = 337
        Width = 388
        Height = 22
        Style = csOwnerDrawFixed
        Sorted = True
        TabOrder = 11
        OnChange = cbBoxTitularChange
      end
      object btnEditarEndereco: TButton
        Left = 113
        Top = 375
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 13
        OnClick = btnEditarEnderecoClick
      end
      object btnCancelarEndereco: TButton
        Left = 310
        Top = 375
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 15
        OnClick = btnCancelarEnderecoClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Funcion'#225'rios Empresa'
      ImageIndex = 2
      object StringGridFuncionario: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1075
        Height = 405
        Align = alClient
        ColCount = 1
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          64)
        ColAligments = (
          0)
      end
    end
  end
  object BindNavigator1: TBindNavigator
    Left = 347
    Top = 25
    Width = 232
    Height = 25
    DataSource = BindSourceDBEmpresa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Orientation = orHorizontal
    TabOrder = 1
  end
  object lbNomeEmpresa: TLabeledEdit
    Left = 8
    Top = 27
    Width = 300
    Height = 23
    EditLabel.Width = 45
    EditLabel.Height = 15
    EditLabel.Caption = 'Empresa'
    ReadOnly = True
    TabOrder = 2
    Text = ''
  end
  object BindingsListEmpresa: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 700
    Top = 285
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'NMEMPRESA'
      Control = edtNomeEmpresa
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'NUCNPJ'
      Control = edtCnpj
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'IDEMPRESA'
      Control = edtIdEmpresa
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'NUINSCRICAO'
      Control = edtInscricao
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'STATIVO'
      Control = edtAtivo
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'DTCADASTRO'
      Control = edtDataCadastro
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'DTABERTURA'
      Control = edtDataAbertura
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'TLCOMERCIAL'
      Control = edtTelefoneComercial
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'TLCELULAR'
      Control = edtTelefoneCelular
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'TXOBS'
      Control = edtObservacao
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'TXEMAIL'
      Control = edtEMail
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'STEXCLUIDO'
      Control = edtExcluido
      Track = True
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'DTEXCLUIDO'
      Control = edtDataExcluido
      Track = True
    end
    object LinkLbEmpresa: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEmpresa
      FieldName = 'NMEMPRESA'
      Control = lbNomeEmpresa
      Track = False
    end
  end
  object BindSourceDBEmpresa: TBindSourceDB
    ScopeMappings = <>
    Left = 712
    Top = 64
  end
  object BindSourceDBFuncionario: TBindSourceDB
    ScopeMappings = <>
    Left = 976
    Top = 128
  end
  object FDQueryFuncionario: TFDQuery
    Left = 984
    Top = 48
  end
  object BindingsListFuncionario: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 984
    Top = 208
    object LinkGridToDataSourceFuncionario: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDBFuncionario
      GridControl = StringGridFuncionario
      Columns = <>
    end
  end
  object BindSourceDBEndereco: TBindSourceDB
    ScopeMappings = <>
    Left = 840
    Top = 184
  end
  object BindingsListEndereco: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 832
    Top = 280
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'IDENDERECO'
      Control = edtIDENDERECO
      Track = False
    end
    object LinkControlToField17: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'NMENDERECO'
      Control = edtEndNMENDERECO
      Track = False
    end
    object LinkControlToField18: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'NUENDERECO'
      Control = edtEndNUENDERECO
      Track = False
    end
    object LinkControlToField19: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'NMBAIRRO'
      Control = edtEndNMBAIRRO
      Track = False
    end
    object LinkControlToField22: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'NUCEP'
      Control = edtEndNUCEP
      Track = False
    end
    object LinkControlToField23: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'STATIVO'
      Control = edtEndSTATIVO
      Track = False
    end
    object LinkControlToField24: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'STEXCLUIDO'
      Control = edtEndSTEXCLUIDO
      Track = False
    end
    object LinkControlToField25: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'DTEXCLUIDO'
      Control = edtEndDTEXCLUIDO
      Track = False
    end
    object LinkControlToField26: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      FieldName = 'TPCADASTRO'
      Control = edtEndTPCADASTRO
      Track = False
    end
    object LinkGridToDataSourceEnderecoEmpresa: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDBEndereco
      GridControl = StringGridEnderecoEmpresa
      Columns = <
        item
          MemberName = 'NMENDERECO'
          Header = 'Endere'#231'o'
          TextWidth = 64
        end
        item
          MemberName = 'NUENDERECO'
          Header = 'N'#250'mero'
          TextWidth = 15
        end
        item
          MemberName = 'STATIVO'
          Header = 'Ativo'
          TextWidth = 15
        end>
    end
  end
end
