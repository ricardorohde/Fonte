object frmVendaBalcao: TfrmVendaBalcao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 684
  ClientWidth = 974
  Color = 12691076
  Constraints.MinHeight = 500
  Constraints.MinWidth = 967
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    974
    684)
  PixelsPerInch = 96
  TextHeight = 14
  object imgFundo: TImage
    Left = 0
    Top = 44
    Width = 974
    Height = 553
    Align = alClient
    Stretch = True
    Transparent = True
    ExplicitTop = -108
  end
  object DBText3: TDBText
    Tag = 1
    Left = 181
    Top = 147
    Width = 90
    Height = 25
    AutoSize = True
    DataField = 'valor_total'
    DataSource = dsBuscaItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Tag = 1
    Left = 8
    Top = 144
    Width = 166
    Height = 29
    Caption = 'Total Item R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Tag = 1
    Left = 8
    Top = 63
    Width = 174
    Height = 25
    Caption = 'C'#243'digo do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxGrid2: TcxGrid
    Tag = 1
    Left = 405
    Top = 48
    Width = 558
    Height = 514
    Anchors = [akLeft, akTop, akBottom]
    BorderStyle = cxcbsNone
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataSource = dsVendaItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      Filtering.ColumnPopup.MultiSelect = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
      object cxGrid2DBTableView1nro_item: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ordem_item'
        Options.Filtering = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Options.Sorting = False
        Width = 39
      end
      object cxGrid2DBTableView1descricao_item: TcxGridDBColumn
        DataBinding.FieldName = 'descricao_item'
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 189
      end
      object cxGrid2DBTableView1qtdevenda: TcxGridDBColumn
        DataBinding.FieldName = 'qtdevenda'
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 60
      end
      object cxGrid2DBTableView1vlrvenda: TcxGridDBColumn
        DataBinding.FieldName = 'vlrvenda'
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 73
      end
      object cxGrid2DBTableView1valor_total: TcxGridDBColumn
        DataBinding.FieldName = 'valor_total'
        Options.Moving = False
        Options.Sorting = False
        Width = 84
      end
      object cxGrid2DBTableView1Desconto: TcxGridDBColumn
        DataBinding.FieldName = 'desconto'
        Visible = False
      end
      object cxGriddiminuir: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 1
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000800000
              0099000000990000009900000099000000990000009900000099000000990000
              0099000000990000009900000099000000990000009900000080000000800000
              0099000000990000009900000099000000990000009900000099000000990000
              0099000000990000009900000099000000990000009900000080000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Kind = bkGlyph
          end>
        Properties.Images = il1
        Properties.OnButtonClick = diminuirPropertiesButtonClick
        Width = 25
      end
      object cxGridadd: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 0
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000082000000820000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000800000
              00990000009900000099000000990000009900000099000000D9000000D90000
              0099000000990000009900000099000000990000009900000080000000800000
              00990000009900000099000000990000009900000099000000D9000000D90000
              0099000000990000009900000099000000990000009900000080000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000009F0000009F0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000082000000820000
              0000000000000000000000000000000000000000000000000000}
            Kind = bkGlyph
          end>
        Properties.Images = il1
        Properties.OnButtonClick = addPropertiesButtonClick
        Width = 25
        IsCaptionAssigned = True
      end
      object cxGridEditar: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 3
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000000000000000000000000000000000000809083C0D0E
              0D59020202120000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000C0D0B512A2D
              28FF1F221EBF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000010101092023
              1FC407070629000000001D1F1BAE0E100E5A0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000252823E21D1F1CB2242622DA0E0F0D5600000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00001D1F1BAE1D1F1BAE2A2D28FF1D1F1BAF242622D90D0E0D53000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000D0E0C51242723DC1D1F1CB12A2D28FF1C1E1BAC242622D90D0E0D530000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000D0E0D52242622DA1D1F1CB02A2D28FF1C1E1BAC242622D90D0E
              0D52000000000000000000000000000000000000000000000000000000000000
              000000000000000000000D0E0D52242622D91D1F1CB02A2D28FF1C1E1BAB2426
              22D90D0E0C510000000000000000000000000000000000000000000000000000
              00000000000000000000000000000D0E0D53242622D91D1F1CB02A2D28FF1C1E
              1BAB242622D90D0D0C5000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000E0E0D54242622D91D1F1CB02A2D
              28FF1C1E1BA9242622D80D0D0C4F000000000000000000000000000000000000
              000000000000000000000000000000000000000000000E0E0D54242622D81D1F
              1BAE2A2D28FF1C1D1AA7242622D80C0D0C4D0000000000000000000000000000
              00000000000000000000000000000000000000000000000000000E0E0D542326
              22D71C1E1BAC2A2D28FF1B1D1AA5232622D60C0C0B4A00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000E0E
              0D54232622D61C1E1BAA2A2D28FF1A1C199D232521D208090837000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000D0E0D53232521D41B1D1AA42A2D28FE1718168A0A0B0A3F000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000D0E0D52222521D0181A1794292C27FB02030215000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000A0B093F0A0A093A0404041E00000000}
            Kind = bkGlyph
          end>
        Properties.Images = il1
        Properties.OnButtonClick = cxGridEditarPropertiesButtonClick
        Width = 25
      end
      object cxGriddeletar: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 2
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000032000000E2000000EE000000EE000000EE000000EE0000
              00EE000000EE000000EB00000050000000000000000000000000000000000000
              0000000000000000008F00000068000000590000000C00000031000000330000
              000A0000005B0000003D000000BA000000000000000000000000000000000000
              000000000000000000A70000004A000000CB00000024000000760000007A0000
              001E000000D10000001F000000D1000000000000000000000000000000000000
              000000000000000000BB00000035000000D900000016000000760000007A0000
              0010000000DE0000000A000000E5000000000000000000000000000000000000
              000000000000000000D000000020000000E700000008000000760000007A0000
              0003000000EB00000000000000EF000000010000000000000000000000000000
              000000000000000000E50000000C000000EF00000000000000760000007A0000
              0000000000F000000000000000E10000000F0000000000000000000000000000
              000000000000000000F000000004000000EB00000000000000760000007A0000
              0000000000E800000007000000CC000000240000000000000000000000000000
              00000000000E000000E200000012000000DD00000000000000760000007A0000
              0000000000DB00000014000000B7000000380000000000000000000000000000
              000000000023000000CD00000020000000CF00000000000000760000007A0000
              0000000000CE00000022000000A30000004D0000000000000000000000000000
              000000000038000000B80000002E000000C100000000000000760000007A0000
              0000000000C10000002F0000008E000000620000000000000000000000000000
              00000000004C000000A400000021000000840000000000000051000000540000
              000000000083000000220000007A000000760000000000000000000000000000
              0030000000BD000000D500000099000000990000009900000099000000990000
              00990000009900000099000000C4000000CE0000003000000000000000000000
              0071000000B70000005500000055000000550000005500000055000000550000
              0055000000550000005500000055000000B60000007200000000000000000000
              001E000000E7000000CC000000CC000000CC000000CC000000CC000000CC0000
              00CC000000CC000000CC000000CC000000E70000001F00000000000000000000
              000000000010000000220000002200000056000000BD00000022000000220000
              00BD000000570000002200000022000000110000000000000000000000000000
              000000000000000000000000000000000019000000E4000000EE000000EE0000
              00E4000000190000000000000000000000000000000000000000}
            Kind = bkGlyph
          end>
        Properties.Images = il1
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = deletarPropertiesButtonClick
        Width = 25
      end
    end
    object cxGrid2DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'nro_item'
      DataController.KeyFieldNames = 'id_venda'
      DataController.MasterKeyFieldNames = 'nro_item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.CardExpanding = True
      OptionsView.CardAutoWidth = True
      OptionsView.CardBorderWidth = 1
      OptionsView.CardIndent = 0
      OptionsView.CardWidth = 715
      OptionsView.EmptyRows = False
      OptionsView.SeparatorWidth = 0
      object cxGrid2DBCardView1observacao: TcxGridDBCardViewRow
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'observacao'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
    end
    object cxGrid2DBCardView2: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'id_vendaitem'
      DataController.MasterKeyFieldNames = 'nro_item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
    end
    object cxGrid2DBCardView3: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'id_vendaitem'
      DataController.MasterKeyFieldNames = 'nro_item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsCustomize.CardExpanding = True
      OptionsView.CaptionSeparator = #0
      OptionsView.CardAutoWidth = True
      OptionsView.CardBorderWidth = 1
      OptionsView.CardIndent = 1
      OptionsView.CardWidth = 500
      OptionsView.EmptyRows = False
      object cxGrid2DBCardView3descricao: TcxGridDBCardViewRow
        DataBinding.FieldName = 'descricao'
        Position.BeginsLayer = True
        Styles.Content = frmMenu.cxDesconto
        IsCaptionAssigned = True
      end
    end
    object cxGrid2DBCardView4: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsVendaItemOpcional
      DataController.DetailKeyFieldNames = 'id_vendaitem'
      DataController.MasterKeyFieldNames = 'nro_item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsCustomize.CardExpanding = True
      OptionsView.CaptionSeparator = #0
      OptionsView.CardAutoWidth = True
      OptionsView.CardBorderWidth = 1
      OptionsView.CardIndent = 0
      OptionsView.CardWidth = 297
      OptionsView.CategoryIndent = 15
      OptionsView.EmptyRows = False
      OptionsView.SeparatorWidth = 0
      object cxGrid2DBCardView4descricao: TcxGridDBCardViewRow
        DataBinding.FieldName = 'descricao'
        Position.BeginsLayer = True
        Styles.Content = frmMenu.cxDesconto
        IsCaptionAssigned = True
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
      object cxGrid2Level2: TcxGridLevel
        GridView = cxGrid2DBCardView4
      end
    end
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 5263440
    ParentBackground = False
    TabOrder = 2
    object DBText5: TDBText
      Left = 8
      Top = 5
      Width = 116
      Height = 33
      AutoSize = True
      DataField = 'descricao'
      DataSource = dsBuscaItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 597
    Width = 974
    Height = 87
    Align = alBottom
    BevelOuter = bvNone
    Color = 5263440
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      974
      87)
    object Label6: TLabel
      Left = 841
      Top = -2
      Width = 122
      Height = 18
      Caption = 'Painel de senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnBotoesAcoesMesa: TFlowPanel
      Left = 0
      Top = 2
      Width = 815
      Height = 80
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 0
      object btImprimir: TAdvGlowButton
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acPesquisarItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 96
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 0
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object btFecharMesa: TAdvGlowButton
        AlignWithMargins = True
        Left = 133
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acCancelaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 92
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 1
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object btConfiguracoes: TAdvGlowButton
        AlignWithMargins = True
        Left = 265
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acOpcionaisItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 100
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 4
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton6: TAdvGlowButton
        AlignWithMargins = True
        Left = 397
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acObservacaoItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 97
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 7
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object btTransferencia: TAdvGlowButton
        AlignWithMargins = True
        Left = 529
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acFecharVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 91
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 3
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object btInserirItem: TAdvGlowButton
        AlignWithMargins = True
        Left = 661
        Top = 1
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acCancelarVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 80
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 5
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object btInserirFracionado: TAdvGlowButton
        AlignWithMargins = True
        Left = 1
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acAbreBuscaCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 107
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 2
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton4: TAdvGlowButton
        AlignWithMargins = True
        Left = 133
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'Desconto no item [F10]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 79
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 6
        OnClick = acDescontoItemExecute
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton7: TAdvGlowButton
        AlignWithMargins = True
        Left = 265
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acInsereProdutoFracionado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 93
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 8
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton1: TAdvGlowButton
        AlignWithMargins = True
        Left = 397
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acPdv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 65
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 9
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton2: TAdvGlowButton
        AlignWithMargins = True
        Left = 529
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acDelivery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 102
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 10
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
      object AdvGlowButton3: TAdvGlowButton
        AlignWithMargins = True
        Left = 661
        Top = 43
        Width = 130
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 16
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 11
        Appearance.BorderColor = clNavy
        Appearance.BorderColorDisabled = clMaroon
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
    end
    object btnSair: TAdvGlowButton
      Left = 840
      Top = 48
      Width = 133
      Height = 40
      Anchors = [akRight, akBottom]
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 18
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = False
      TabOrder = 1
      OnClick = btnSairClick
      Appearance.BorderColor = clNavy
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
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 840
      Top = 16
      DataBinding.DataField = 'nro_venda'
      DataBinding.DataSource = dsVenda
      ParentFont = False
      Properties.SpinButtons.Visible = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 133
    end
  end
  object edCodProduto: TcxButtonEdit
    Left = 8
    Top = 94
    ParentFont = False
    Properties.Buttons = <
      item
        Action = acPesquisarItem
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
          87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
          A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
          A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
          92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
          6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
        Kind = bkGlyph
      end>
    Properties.ClickKey = 0
    Properties.Images = frmMenu.ImgList16
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnKeyDown = edCodProdutoKeyDown
    Width = 174
  end
  object AdvGroupBox1: TAdvGroupBox
    Left = 8
    Top = 192
    Width = 394
    Height = 370
    BorderColor = clNavy
    RoundEdges = True
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Dados da venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Tag = 1
      Left = 8
      Top = 29
      Width = 49
      Height = 19
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Tag = 1
      Left = 70
      Top = 29
      Width = 71
      Height = 19
      AutoSize = True
      DataField = 'total_venda'
      DataSource = dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 73
      Top = 55
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'nome_cliente'
      DataSource = dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 54
      Width = 69
      Height = 19
      Caption = 'Cliente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 78
      Width = 37
      Height = 19
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 49
      Top = 78
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'cpf_cliente'
      DataSource = dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object qrVenda: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda'
      
        '  (ven_001, ven_004, emp_001, ven_002, cli_001, sit_001, ven_023' +
        ', b_taxa_entrega,'
      
        '   usu_001_1, dat_001_1, ven_009, ven_024, ven_008, id_caixa_abe' +
        'rtura, ven_027, cpf_cliente, '
      '   terminal_abertura, ven_029,nome_cliente)'
      'VALUES'
      
        '  (:ven_001, LOCALTIMESTAMP, :emp_001, :venda_orcamento, :id_cli' +
        'ente, :sit_001, '#39'N'#39', :b_taxa_entrega,'
      
        '   :usu_001_1, :data_cadastro, :total_venda, :tipo_venda, :acres' +
        'cimo, :id_caixa_abertura, :observacao, :cpf_cliente,'
      '   :terminal_abertura, :nro_venda,:nome_cliente)')
    SQLDelete.Strings = (
      'DELETE FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      
        '  ven_002 = :venda_orcamento, cli_001 = :id_cliente, sit_001 = :' +
        'sit_001, usu_001_1 = :usu_001_1, '
      
        '  dat_001_1 = :data_cadastro, ven_009 = :total_venda, ven_024 = ' +
        ':tipo_venda, ven_007 = :desconto,'
      
        '  ven_008= :acrescimo, id_caixa_abertura = :id_caixa_abertura, v' +
        'en_027 = :observacao,'
      
        '  cpf_cliente =:cpf_cliente, b_taxa_entrega = :b_taxa_entrega, t' +
        'erminal_abertura = :terminal_abertura,'
      '  ven_029 = :nro_venda, nome_cliente =:nome_cliente'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ven_001, emp_001, ven_002, cli_001, sit_001, usu_001_1, d' +
        'at_001_1, ven_009, ven_024 FROM venda'
      'WHERE'
      '  ven_001 = :ven_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001, '
      'v.emp_001, '
      'v.cli_001 as id_cliente,'
      'v.dat_001_1 data_cadastro, '
      'v.ven_024 as tipo_venda, '
      'v.ven_002 as venda_orcamento,'
      'coalesce(v.ven_007,0.00) as desconto,'
      'coalesce(v.ven_008, 0.00) as acrescimo,'
      'coalesce(v.ven_009, 0.00) as total_venda,'
      
        'coalesce(case when v.ven_009=0.00 then 0.00 else v.ven_007/v.ven' +
        '_009/0.01  end,0.00) as desconto_percent,'
      'v.sit_001,'
      'v.usu_001_1,'
      'cast(fn_situacoes(v.sit_001) as varchar(100)) as status_desc,'
      'v.id_caixa_abertura,'
      'v.cpf_cliente,'
      'v.ven_027 as observacao,'
      'v.b_taxa_entrega,'
      
        'cast(coalesce(v.nome_cliente, c.cli_002) as varchar(90)) as nome' +
        '_cliente,'
      'terminal_abertura,'
      'ven_029 as nro_venda'
      'from venda v'
      
        'left join clientes c on c.cli_001=v.cli_001 and c.emp_001=v.emp_' +
        '001'
      'where v.ven_001=:id_venda and v.emp_001=:id_empresa')
    AfterOpen = qrVendaAfterOpen
    AfterClose = qrVendaAfterClose
    Left = 488
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrVendadata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qrVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendavenda_orcamento: TIntegerField
      FieldName = 'venda_orcamento'
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendastatus_desc: TWideStringField
      FieldName = 'status_desc'
      ReadOnly = True
      Size = 100
    end
    object qrVendatotal_venda: TFloatField
      FieldName = 'total_venda'
      currency = True
    end
    object qrVendatotal_itens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_itens'
      currency = True
      Calculated = True
    end
    object qrVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendadesconto_percent: TFloatField
      FieldName = 'desconto_percent'
      DisplayFormat = '##0.00%'
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
      currency = True
    end
    object qrVendaid_caixa_abertura: TIntegerField
      FieldName = 'id_caixa_abertura'
    end
    object qrVendaobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
    end
    object qrVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
    end
    object qrVendaterminal_abertura: TWideStringField
      FieldName = 'terminal_abertura'
      Size = 100
    end
    object qrVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Size = 80
    end
    object qrVendanro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    OnDataChange = dsVendaDataChange
    Left = 624
    Top = 392
  end
  object qrBuscaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_001 as id_material, '
      'm.mat_003 as descricao, '
      'm.mat_003 as descricao_old, '
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')  as varchar(100)) a' +
        's descricao_p,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39')  as varchar(100)) a' +
        's descricao_m,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39')  as varchar(100)) a' +
        's descricao_g,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  as varchar(100)) ' +
        'as descricao_gg,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')  as varchar(100' +
        ')) as descricao_extra,'
      'm.tamanho_padrao,'
      'm.b_venda_tamanho,'
      'm.valor_tam_p,'
      'm.valor_tam_m,'
      'm.valor_tam_g,'
      'm.valor_tam_gg,'
      'm.valor_tam_extra,'
      'u.uni_003 as unidade , '
      'm.mat_008 as valor_unit, '
      'mat_004 as cod_ref,'
      '1.00 as quantidade,'
      'coalesce(ui.ite_001, 0) as ultimo_item,'
      'coalesce(m.mat_021, 0) as cod_impressora,'
      'm.b_peso_balanca,'
      'm.cat_001 as id_categoria,'
      'm.b_exige_alterar_preco_venda,'
      'coalesce(m.tara_balanca, 0.0) as tara_balanca '
      'from materiais m'
      
        'join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_00' +
        '1'
      'join desc_tamanho_material dm on dm.id_empresa=m.emp_001'
      
        'left join (select ite_001, ite_013 from vendaitem where ven_001=' +
        ':id_venda and emp_001=:emp order by ite_001 desc limit 1) ui on ' +
        'true'
      'where m.mat_004=:cod_ref and m.emp_001=:emp;')
    AfterOpen = qrBuscaItemAfterOpen
    OnCalcFields = qrBuscaItemCalcFields
    Left = 488
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'cod_ref'
        ParamType = ptInput
        Value = nil
      end>
    object qrBuscaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrBuscaItemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrBuscaItemunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrBuscaItemvalor_unit: TFloatField
      Alignment = taLeftJustify
      FieldName = 'valor_unit'
      Required = True
      EditFormat = '#,##0.00'
      currency = True
    end
    object qrBuscaItemcod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrBuscaItemvalortotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object qrBuscaItemultimo_item: TIntegerField
      FieldName = 'ultimo_item'
      ReadOnly = True
    end
    object qrBuscaItemquantidade: TFloatField
      Alignment = taLeftJustify
      FieldName = 'quantidade'
    end
    object qrBuscaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
      ReadOnly = True
    end
    object qrBuscaItemdescricao_old: TWideStringField
      FieldName = 'descricao_old'
      Required = True
      Size = 50
    end
    object qrBuscaItemdescricao_p: TWideStringField
      FieldName = 'descricao_p'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_m: TWideStringField
      FieldName = 'descricao_m'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_g: TWideStringField
      FieldName = 'descricao_g'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_gg: TWideStringField
      FieldName = 'descricao_gg'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_extra: TWideStringField
      FieldName = 'descricao_extra'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemtamanho_padrao: TWideStringField
      FieldName = 'tamanho_padrao'
      Size = 2
    end
    object qrBuscaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrBuscaItemvalor_tam_p: TFloatField
      FieldName = 'valor_tam_p'
    end
    object qrBuscaItemvalor_tam_m: TFloatField
      FieldName = 'valor_tam_m'
    end
    object qrBuscaItemvalor_tam_g: TFloatField
      FieldName = 'valor_tam_g'
    end
    object qrBuscaItemvalor_tam_gg: TFloatField
      FieldName = 'valor_tam_gg'
    end
    object qrBuscaItemvalor_tam_extra: TFloatField
      FieldName = 'valor_tam_extra'
    end
    object qrBuscaItemb_peso_balanca: TBooleanField
      FieldName = 'b_peso_balanca'
      Required = True
    end
    object qrBuscaItemid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object qrBuscaItemb_exige_alterar_preco_venda: TBooleanField
      FieldName = 'b_exige_alterar_preco_venda'
      Required = True
    end
    object qrBuscaItemtara_balanca: TFloatField
      FieldName = 'tara_balanca'
      ReadOnly = True
    end
  end
  object dsBuscaItem: TDataSource
    DataSet = qrBuscaItem
    Left = 672
    Top = 320
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      
        '  (emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite_005' +
        ', ite_006, sit_001, desconto)'
      'VALUES'
      
        '  (:emp_001, :ven_001, :ite_001, :mat_001, :ite_002, :ite_003, :' +
        'ite_005, :ite_006, :sit_001, :desconto)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :emp_001, ven_001 = :ven_001, ite_001 = :ite_001, ma' +
        't_001 = :mat_001, ite_002 = :ite_002, ite_003 = :ite_003, ite_00' +
        '5 = :ite_005, ite_006 = :ite_006, sit_001 = :sit_001, desconto =' +
        ' :desconto'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006, sit_001, desconto FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA '
      '     , MAT.mat_001 as id_material'
      '     , ite.acrescimo    '
      ',cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else MAT.MAT_003 end'
      'else '
      '  MAT.MAT_003'
      'end) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      
        '     , (ITE.ITE_002 * ITE.ITE_003 * ite.desconto * 0.01) as valo' +
        'r_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , cast(('
      'case when ite.b_venda_tamanho then '
      '  case ite.tamanho'
      '    when '#39'P'#39' then  dm.tamanho_p'
      '    when '#39'M'#39' then  dm.tamanho_m'
      '    when '#39'G'#39' then  dm.tamanho_g'
      '    when '#39'GG'#39' then dm.tamanho_gg '
      '    when '#39'E'#39' then  dm.tamanho_extra'
      '  else '#39#39' end '
      'else '#39#39' end) as varchar(100)) as desc_tamanho,'
      'ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    AfterOpen = qrVendaItemAfterOpen
    AfterClose = qrVendaItemAfterClose
    AfterRefresh = qrVendaItemAfterRefresh
    Left = 568
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemnro_item: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendaItemvlrvenda: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemcod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qrVendaItemstatus: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrVendaItemvalor_taxa10: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object qrVendaItemvalor_total_taxa10: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object qrVendaItemordem_item: TLargeintField
      Alignment = taCenter
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendaItemvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrVendaItemdesc_tamanho: TWideStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = qrVendaItem
    Left = 576
    Top = 272
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList24
    Left = 568
    Top = 392
    object acAberturaVenda: TAction
      Caption = 'Abertura [F1]'
      ImageIndex = 69
      OnExecute = acAberturaVendaExecute
    end
    object acFecharVenda: TAction
      Caption = '&Finalizar venda [F6]'
      ImageIndex = 91
      ShortCut = 117
      OnExecute = acFecharVendaExecute
    end
    object acCancelarVenda: TAction
      Caption = 'Cancelar venda [F8]'
      ImageIndex = 80
      ShortCut = 119
      OnExecute = acCancelarVendaExecute
    end
    object acPesquisarItem: TAction
      Caption = 'Inserir item [F2]'
      ImageIndex = 96
      ShortCut = 113
      OnExecute = acPesquisarItemExecute
    end
    object acCancelaItem: TAction
      Caption = 'Cancelar item [F3]'
      ImageIndex = 92
      ShortCut = 114
      OnExecute = acCancelaItemExecute
    end
    object acObservacaoItem: TAction
      Caption = 'Obs. no item [F5]'
      ImageIndex = 97
      ShortCut = 116
      OnExecute = acObservacaoItemExecute
    end
    object acInsereProdutoFracionado: TAction
      Caption = 'Inserir Fracionado [F11]'
      ImageIndex = 93
      ShortCut = 122
      OnExecute = acInsereProdutoFracionadoExecute
    end
    object acOpcionaisItem: TAction
      Caption = 'Opcionais [F4]'
      ImageIndex = 100
      ShortCut = 115
      OnExecute = acOpcionaisItemExecute
    end
    object acConsultarProduto: TAction
      Caption = 'Consultar Produto [F7]'
      ImageIndex = 65
      ShortCut = 118
      OnExecute = acConsultarProdutoExecute
    end
    object acAbreBuscaCliente: TAction
      Caption = 'Cliente/CPF [F9]'
      ImageIndex = 107
      ShortCut = 120
      OnExecute = acAbreBuscaClienteExecute
    end
    object acAbreGaveta: TAction
      Caption = 'acAbreGaveta'
      ShortCut = 16455
      OnExecute = acAbreGavetaExecute
    end
    object acDelivery: TAction
      Caption = 'Delivery'
      ImageIndex = 102
      OnExecute = acDeliveryExecute
    end
    object acPdv: TAction
      Caption = 'Buscar Venda'
      ImageIndex = 65
      OnExecute = acPdvExecute
    end
    object acMenu: TAction
      Caption = 'Salvar Venda'
      ImageIndex = 16
      OnExecute = acMenuExecute
    end
    object acDescontoitem: TAction
      Caption = 'acDescontoitem'
      ImageIndex = 79
      ShortCut = 121
      OnExecute = acDescontoItemExecute
    end
    object actEditarObservacaoOpcional: TAction
      Caption = 'actEditarObservacaoOpcional'
      OnExecute = actEditarObservacaoOpcionalExecute
    end
  end
  object qrInsereItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'insert into vendaitem '
      '(emp_001, ven_001, mat_001, ite_002, ite_003, '
      ' ite_005,   ite_001,'
      ' ite_012, sit_001, ite_011, ite_008,'
      ' tamanho, b_venda_tamanho, ite_006,'
      ' ite_013, item_fracionado, quantidade_impressao, desconto)'
      'values '
      '(:emp, :id_venda, :id_material, :quantidade, :valor_unit, '
      ' :valor_total, :nro_item , '
      ' '#39'N'#39', 4, '#39'N'#39', '#39'N'#39', '
      ' :tamanho, :b_venda_tamanho, :observacao,'
      
        ' :cod_impressora, :item_fracionado, :quantidade_impressao, :desc' +
        'onto)')
    Left = 488
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_material'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_unit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_total'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nro_item'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'b_venda_tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'observacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cod_impressora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item_fracionado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade_impressao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        Value = nil
      end>
  end
  object jvdsBuscaItem: TJvDataSource
    DataSet = qrBuscaItem
    Left = 488
    Top = 448
  end
  object dsVendaItemOpcional: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemOpcional
    Left = 776
    Top = 552
  end
  object qrVendaItemOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.VEN_001 as id_venda,'
      '       ITE.EMP_001 as id_empresa,'
      '       ITE.ITE_001 as id_vendaitem,'
      '       0 as id_opcional,     '
      
        '       cast(concat('#39'Observa'#231#245'es: '#39', ITE.ITE_006) as varchar(200)' +
        ') as descricao,'
      '       0.00 as valor,'
      '       0 as ord'
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      
        'and not ite.sit_001 in (0,1,2,3) and not (ITE.ITE_006 is null or' +
        ' ITE.ITE_006='#39#39')'
      ''
      'union all'
      ''
      'select '
      'vio.id_venda, '
      'vio.id_empresa, '
      'vio.id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao) as varchar(200)) as descr' +
        'icao, '
      'o.valor ,'
      '1 as ord'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      'order by 3,7')
    ReadOnly = True
    Left = 608
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemOpcionalid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_opcional: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object qrVendaItemOpcionalvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrVendaItemOpcionaldescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object qrVendaItemOpcionalord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 689
    Top = 391
  end
  object il1: TImageList
    Tag = 1
    Left = 560
    Top = 128
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007D7D7D007D7D7D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCD
      CD001D1D1D001111110011111100111111001111110011111100111111001414
      1400AFAFAF00FFFFFF00FFFFFF00FFFFFF00CBCCCB00B3B4B300EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007070
      700097979700A6A6A600F3F3F300CECECE00CCCCCC00F5F5F500A4A4A400C2C2
      C20045454500FFFFFF00FFFFFF00FFFFFF00BABBB9002A2D28005F625E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005858
      5800B5B5B50034343400DBDBDB008989890085858500E1E1E1002E2E2E00E0E0
      E0002E2E2E00FFFFFF00FFFFFF00FFFFFF00F7F7F7005B5E5A00DDDDDC00FFFF
      FF006E706C00B3B5B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004444
      4400CACACA0026262600E9E9E9008989890085858500EFEFEF0021212100F5F5
      F5001A1A1A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004245
      40006A6C6900494B4700B7B8B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F2F
      2F00DFDFDF0018181800F7F7F7008989890085858500FCFCFC0014141400FFFF
      FF0010101000FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E706C006E70
      6C002A2D28006D6F6B004A4C4800B9BAB900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A1A
      1A00F3F3F30010101000FFFFFF008989890085858500FFFFFF000F0F0F00FFFF
      FF001E1E1E00F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBBCBA00474A
      46006B6D6A002A2D28006F716E004A4C4800B9BAB900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000F0F
      0F00FBFBFB0014141400FFFFFF008989890085858500FFFFFF0017171700F8F8
      F80033333300DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABB
      BA00494B47006C6E6B002A2D28006F716E004A4C4800BABBBA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F0066666600666666006666
      6600666666006666660066666600262626002626260066666600666666006666
      66006666660066666600666666007F7F7F007F7F7F0066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      66006666660066666600666666007F7F7F00FFFFFF00FFFFFF00F1F1F1001D1D
      1D00EDEDED0022222200FFFFFF008989890085858500FFFFFF0024242400EBEB
      EB0048484800C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BABBBA004A4C48006C6E6B002A2D280070726F004A4C4800BBBCBA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F0066666600666666006666
      6600666666006666660066666600262626002626260066666600666666006666
      66006666660066666600666666007F7F7F007F7F7F0066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      66006666660066666600666666007F7F7F00FFFFFF00FFFFFF00DCDCDC003232
      3200DFDFDF0030303000FFFFFF008989890085858500FFFFFF0031313100DDDD
      DD005C5C5C00B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B9BAB9004A4C48006C6E6B002A2D280070726F004A4C4800BCBC
      BB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C7C7004747
      4700D1D1D1003E3E3E00FFFFFF008989890085858500FFFFFF003E3E3E00D0D0
      D000717171009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B9B9B8004A4C48006C6E6B002A2D2800727471004B4D
      4900BDBDBC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3B3005B5B
      5B00DEDEDE007B7B7B00FFFFFF00AEAEAE00ABABAB00FFFFFF007C7C7C00DDDD
      DD008585850089898900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B9B9B8004B4D49006E706C002A2D28007475
      72004B4D4900BEBFBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFCF00424242002A2A
      2A00666666006666660066666600666666006666660066666600666666006666
      66003B3B3B0031313100CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B9B8004B4E4A006F716E002A2D
      2800757774004C4F4B00C1C1C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E8E8E0048484800AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00494949008D8D8D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B9B8004C4F4B007173
      70002A2D28007C7E7B0050524E00D0D1D000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E100181818003333
      3300333333003333330033333300333333003333330033333300333333003333
      33003333330018181800E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9BAB9004E50
      4C00767875002B2E29008C8D8B00CACBCA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006060600060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00DDDD
      DD00DDDDDD00A9A9A90042424200DDDDDD00DDDDDD0042424200A8A8A800DDDD
      DD00DDDDDD00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABB
      BA0051545000838582002D302B00ECEDEC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007D7D7D007D7D7D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E6E6E6001B1B1B0011111100111111001B1B1B00E6E6E600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CACBC900CFCFCE00E5E5E500FFFFFF00424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object qrUpdateItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'update vendaitem set ite_006 = :observacao'
      'where emp_001 = :id_empresa'
      'and ven_001 = :id_venda'
      'and ite_001 = :nro_item'
      ' ')
    Left = 496
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'observacao'
        Value = nil
      end
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
        Name = 'nro_item'
        Value = nil
      end>
  end
end
