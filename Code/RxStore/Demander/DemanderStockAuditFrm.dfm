object DemanderStockAuditForm: TDemanderStockAuditForm
  Left = 321
  Top = 319
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Demander Stock Audit Trail'
  ClientHeight = 582
  ClientWidth = 1227
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object dxgStockAudit: TdxDBGrid
    Left = 0
    Top = 95
    Width = 1227
    Height = 443
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Audit_ID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsadoStockAudit
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RegistryPath = '\Software\RxSolution\1.2\Grids\Demander\dxgStockAudit'
    object dxgStockAuditDate_dat: TdxDBGridDateColumn
      Caption = 'Date'
      DisableEditor = True
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Date_dat'
    end
    object dxgStockAuditReference_str: TdxDBGridColumn
      Caption = 'Reference'
      DisableEditor = True
      Width = 303
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Reference_str'
    end
    object dxgStockAuditQuantity_int: TdxDBGridMaskColumn
      Caption = 'Qty'
      DisableEditor = True
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Quantity_int'
    end
    object dxgStockAuditQtyUnit_dbl: TdxDBGridMaskColumn
      Caption = 'Qty SKU'
      DisableEditor = True
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QtyUnit_dbl'
      DisableFilter = True
    end
    object dxgStockAuditValue_mon: TdxDBGridCurrencyColumn
      Caption = 'Cost'
      DisableEditor = True
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Value_mon'
      SummaryFooterType = cstSum
      DecimalPlaces = 4
      DisplayFormat = 'R ,0.0000;-R ,0.0000'
      Nullable = False
      DisableFilter = True
    end
    object dxgStockAuditQuantityOnHand_int: TdxDBGridMaskColumn
      Caption = 'Stock Balance'
      DisableEditor = True
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QuantityOnHand_int'
      DisableFilter = True
    end
    object dxgStockAuditUnitsOnHand_dbl: TdxDBGridMaskColumn
      Caption = 'SKU Balance'
      DisableEditor = True
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UnitsOnHand_dbl'
      DisableFilter = True
    end
    object dxgStockAuditPackSize_dbl: TdxDBGridMaskColumn
      Caption = 'Pack'
      DisableEditor = True
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackSize_dbl'
      DisableFilter = True
    end
    object dxgStockAuditType_str: TdxDBGridMaskColumn
      Caption = 'Type'
      DisableEditor = True
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type_str'
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 538
    Width = 1227
    Height = 44
    CaptionOk = 'Done'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowCancelButton = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1227
    Height = 95
    Align = alTop
    TabOrder = 2
    object RzDBLabel1: TRzDBLabel
      Left = 20
      Top = 15
      Width = 907
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      DataField = 'Description_str'
      DataSource = DemanderDM.dsadoStockList
    end
    object Label2: TLabel
      Left = 6
      Top = 55
      Width = 36
      Height = 16
      Caption = 'From'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label24: TLabel
      Left = 169
      Top = 49
      Width = 30
      Height = 30
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Print: TButton
      Left = 1044
      Top = 39
      Width = 92
      Height = 31
      Caption = 'Print'
      TabOrder = 0
      OnClick = PrintClick
    end
    object dteStart: TDateTimePicker
      Left = 46
      Top = 52
      Width = 123
      Height = 24
      CalAlignment = dtaLeft
      Date = 37623.041875
      Time = 37623.041875
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
      OnCloseUp = dteStartCloseUp
    end
    object dteEnd: TDateTimePicker
      Left = 199
      Top = 52
      Width = 123
      Height = 24
      CalAlignment = dtaLeft
      Date = 37623.9997337963
      Time = 37623.9997337963
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
      OnCloseUp = dteEndCloseUp
    end
  end
  object ppDBStockAudit: TppDBPipeline
    DataSource = dsadoStockAudit
    UserName = 'DBStockAudit'
    Left = 488
    Top = 12
  end
  object ppStockAudit: TppReport
    AutoStop = False
    DataPipeline = ppDBStockAudit
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 24130
    PrinterSetup.mmMarginRight = 11430
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Projects\RxSolution_20_04_2010\Lang 2\Reports\DemanderStockAu' +
      'ditTrail.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 520
    Top = 12
    Version = '11.03'
    mmColumnWidth = 284427
    DataPipelineName = 'ppDBStockAudit'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DEMANDER STOCK AUDIT TRAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 7408
        mmLeft = 3440
        mmTop = 10583
        mmWidth = 100013
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 243682
        mmTop = 529
        mmWidth = 17463
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = 6697728
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 5027
        mmLeft = 3440
        mmTop = 17992
        mmWidth = 258234
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 7408
        mmLeft = 3440
        mmTop = 1058
        mmWidth = 120121
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3969
        mmLeft = 11113
        mmTop = 4233
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3969
        mmLeft = 11113
        mmTop = 9260
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 8202
        mmLeft = 34925
        mmTop = 4233
        mmWidth = 218546
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 17463
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 22490
        mmTop = 17463
        mmWidth = 16976
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 185473
        mmTop = 17463
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 217223
        mmTop = 17463
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8382
        mmLeft = 225955
        mmTop = 13229
        mmWidth = 13462
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SKU'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 242094
        mmTop = 17463
        mmWidth = 7408
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 22225
        mmWidth = 251355
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 4233
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 9260
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 17463
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Date_dat'
        DataPipeline = ppDBStockAudit
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 0
        mmWidth = 17209
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Quantity_int'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3979
        mmLeft = 185473
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Value_mon'
        DataPipeline = ppDBStockAudit
        DisplayFormat = '$#,0.0000;($#,0.0000)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3969
        mmLeft = 200819
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QuantityOnHand_int'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3979
        mmLeft = 225955
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UnitsOnHand_dbl'
        DataPipeline = ppDBStockAudit
        DisplayFormat = '1,23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3979
        mmLeft = 242094
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Reference_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 3979
        mmLeft = 22490
        mmTop = 0
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clWindow
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Type_str'
        DataPipeline = ppDBStockAudit
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBStockAudit'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 237861
        mmTop = 1323
        mmWidth = 21696
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 261567
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object adoStockAudit: TADOQuery
    Tag = 1
    Connection = DemanderDM.ADODemanderConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProductCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'startDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'endDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM strdprc_DemanderStockAudit '
      'WHERE (ProductCode_ID = :ProductCode_ID) '
      'AND (Demander_ID = :Demander_ID)'
      'AND (Date_dat>=:startDate)'
      'AND (Date_dat<=:endDate)')
    Left = 424
    Top = 12
  end
  object dsadoStockAudit: TDataSource
    DataSet = adoStockAudit
    Left = 456
    Top = 12
  end
end
