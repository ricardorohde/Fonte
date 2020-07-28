object frmVendaItemObservacaoComplemento: TfrmVendaItemObservacaoComplemento
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 483
  ClientWidth = 907
  Color = 12691076
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    907
    483)
  PixelsPerInch = 96
  TextHeight = 13
  object lblCadastrarOpcionais: TLabel
    Left = 836
    Top = 101
    Width = 63
    Height = 18
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentBiDiMode = False
    ParentFont = False
    OnClick = lblCadastrarOpcionaisClick
  end
  object lblCadastrarObservacoes: TLabel
    Left = 836
    Top = 258
    Width = 63
    Height = 18
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblCadastrarObservacoesClick
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 907
    Height = 19
    Align = alTop
    Caption = 'Adicionar %s ao Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 195
  end
  object lblOpcionais: TLabel
    Left = 14
    Top = 101
    Width = 61
    Height = 18
    Caption = 'Opcionais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lblObservacoes: TLabel
    Left = 12
    Top = 258
    Width = 85
    Height = 18
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object grpbxDadosProduto: TGroupBox
    Left = 0
    Top = 19
    Width = 907
    Height = 81
    Align = alTop
    Caption = 'Informa'#231#245'es do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 17
      Top = 21
      Width = 37
      Height = 18
      Caption = 'Qtde.'
    end
    object Label3: TLabel
      Left = 115
      Top = 21
      Width = 32
      Height = 18
      Caption = 'Valor'
    end
    object Label4: TLabel
      Left = 224
      Top = 21
      Width = 75
      Height = 18
      Caption = 'Impressora'
    end
    object Label5: TLabel
      Left = 592
      Top = 19
      Width = 61
      Height = 18
      Caption = 'Categoria'
      Visible = False
    end
    object edtCategoria: TEdit
      Left = 592
      Top = 40
      Width = 281
      Height = 26
      TabOrder = 3
      Visible = False
    end
    object edQuantidade: TJvValidateEdit
      Left = 16
      Top = 43
      Width = 82
      Height = 26
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 3
      EditText = '0,000'
      HasMaxValue = True
      MaxValue = 999.000000000000000000
      TabOrder = 0
      OnChange = edQuantidadeChange
      OnKeyPress = edQuantidadeKeyPress
      OnValueChanged = edQuantidadeValueChanged
    end
    object cbbImpressora: TComboBox
      Left = 224
      Top = 43
      Width = 337
      Height = 26
      TabOrder = 2
      OnChange = cbbImpressoraChange
      OnExit = cbbImpressoraExit
      Items.Strings = (
        'Nenhum'
        'Balcao'
        'Cozinha'
        'Bar'
        'Salao'
        'Ambiente')
    end
    object edtValor: TJvValidateEdit
      Left = 114
      Top = 43
      Width = 82
      Height = 26
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      EditText = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      MaxValue = 9999.990000000000000000
      ParentFont = False
      TabOrder = 1
    end
  end
  object btnConfirmar: TAdvGlowButton
    Left = 652
    Top = 430
    Width = 122
    Height = 43
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 1
    Images = frmMenu.ImgList32
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnConfirmarClick
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object btnCancel: TAdvGlowButton
    Left = 777
    Top = 430
    Width = 122
    Height = 43
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 4
    Images = frmMenu.ImgList32
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelClick
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object chklstObservacoes: TCheckListBox
    Left = 8
    Top = 279
    Width = 891
    Height = 138
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Sorted = True
    TabOrder = 2
    OnClick = chklstOpcionaisClick
    OnKeyPress = chklstObservacoesKeyPress
  end
  object chklstOpcionais: TCheckListBox
    Left = 8
    Top = 125
    Width = 891
    Height = 138
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = chklstOpcionaisClick
  end
  object qryObservacoes: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'Select id_categoria as id,'
      '       descricao'
      '  From observacao'
      ' Where id_categoria = (Select cat_001'
      #9#9#9' From materiais'
      #9#9#9'Where mat_001 = :param1)')
    Left = 488
    Top = 144
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'param1'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryOpcionais: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'Select o.id_opcional as id, '
      '       o.descricao || '#39' '#39' ||  o.valor as descricao '
      '  From materiais_opcional mo'
      '  Join opcional o'
      '    On mo.id_opcional = o.id_opcional'
      ' Where o.id_empresa = :param1'
      '   and mo.id_empresa = :param1'
      '   and id_material = :param2')
    Left = 360
    Top = 136
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'param1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'param2'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryMaterial: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select mat_003'
      '  from materiais'
      ' where mat_001 = :id_material'
      '   and emp_001 = :id_empresa')
    Left = 192
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_material'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
  end
  object qryObservacaoSelecionada: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'Select ite_006 from vendaitem '
      'where emp_001 = :id_empresa'
      'and ven_001 =:id_venda '
      'and ite_001= :id_item')
    Left = 640
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_item'
        Value = nil
      end>
  end
  object qryOpcionalSelecionado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'Select  o.descricao  || '#39' '#39' ||  o.valor as descricao from vendai' +
        'temopcional vio'
      'join opcional o on o.id_opcional = vio.id_opcional'
      'where vio.id_empresa = :id_empresa'
      'and vio.id_venda =:id_venda '
      'and vio.id_vendaitem = :id_item')
    Left = 776
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_item'
        Value = nil
      end>
  end
end
