object PrepackingItemsFrm: TPrepackingItemsFrm
  Left = 167
  Top = 63
  Width = 1558
  Height = 890
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Prepacking Items'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label6: TLabel
    Left = 470
    Top = 139
    Width = 90
    Height = 26
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Humidity:'
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 798
    Width = 1542
    Height = 47
    Align = alTop
    Alignment = taLeftJustify
    Color = clWhite
    TabOrder = 0
    DesignSize = (
      1542
      47)
    object btnClose: TButton
      Left = 30
      Top = 7
      Width = 92
      Height = 31
      Action = PrepackingDM.atnSaveClose
      Anchors = [akLeft, akBottom]
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1542
    Height = 284
    Align = alTop
    Caption = 'Panel1'
    Color = clWhite
    TabOrder = 1
    object pnlHeaderBackground: TPanel
      Left = 1
      Top = 41
      Width = 1540
      Height = 241
      Align = alTop
      BevelOuter = bvNone
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744576
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        1540
        241)
      object Label13: TLabel
        Left = 2
        Top = 63
        Width = 92
        Height = 23
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Items:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 2
        Top = 28
        Width = 92
        Height = 34
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Date:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 2
        Top = 112
        Width = 92
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Posted:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label31: TLabel
        Left = 2
        Top = 2
        Width = 211
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Info. Details'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label79: TLabel
        Left = 214
        Top = 175
        Width = 90
        Height = 23
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Checked By:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblDate: TDBText
        Left = 95
        Top = 28
        Width = 117
        Height = 34
        Color = 16644340
        DataField = 'Created_dat'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object dbtCountOfItems: TDBText
        Left = 95
        Top = 63
        Width = 117
        Height = 23
        Alignment = taRightJustify
        Color = 16644340
        DataField = 'ItemsNo_int'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 214
        Top = 199
        Width = 90
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Humidity:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 214
        Top = 2
        Width = 95
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Result:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 214
        Top = 150
        Width = 90
        Height = 23
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Packed by:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 424
        Top = 199
        Width = 92
        Height = 24
        AutoSize = False
        Caption = 'Temperature:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 214
        Top = 28
        Width = 95
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Required Yield:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 214
        Top = 107
        Width = 95
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Actual Yield:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 552
        Top = 200
        Width = 77
        Height = 23
        AutoSize = False
        Caption = 'Selling date:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 95
        Top = 112
        Width = 117
        Height = 37
        Color = 16644340
        DataField = 'Posted_dat'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label5: TLabel
        Left = 214
        Top = 54
        Width = 95
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Required SKU:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 214
        Top = 80
        Width = 95
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Calc SKU:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzSeparator1: TRzSeparator
        Left = 217
        Top = 137
        Width = 1954
        Height = 9
        ShowGradient = True
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        ParentColor = False
      end
      object Label12: TLabel
        Left = 1038
        Top = 200
        Width = 95
        Height = 23
        AutoSize = False
        Caption = 'Extra charges:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 2
        Top = 87
        Width = 92
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Cost:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 95
        Top = 87
        Width = 117
        Height = 24
        Alignment = taRightJustify
        Color = 16644340
        DataField = 'TotalCost_mon'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 446
        Top = 107
        Width = 128
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Value of ingredient:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 745
        Top = 200
        Width = 147
        Height = 23
        AutoSize = False
        Caption = 'Repack batch number:'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1526
        Top = 32
        Width = 3
        Height = 16
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dteCheckedDate: TwwDBDateTimePicker
        Left = 1365
        Top = 174
        Width = 108
        Height = 24
        Anchors = [akTop, akRight]
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = ANSI_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'Checked_dat'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Epoch = 1950
        ButtonEffects.Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 9
        UnboundDataType = wwDTEdtDate
      end
      object btnPostClose: TButton
        Left = 4
        Top = 149
        Width = 208
        Height = 90
        Action = PrepackingDM.atnPrePostandClose
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object cmbCheckedBy: TRzDBLookupComboBox
        Left = 305
        Top = 175
        Width = 1059
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvSpace
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clWhite
        Constraints.MaxHeight = 21
        Ctl3D = False
        DataField = 'CheckedBy_str'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DropDownRows = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Description'
        ListField = 'Description'
        ListSource = PrepackingDM.dsUsers
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        FlatButtons = False
        DisabledColor = clSilver
        FocusColor = clWhite
        FrameColor = clBtnText
        FrameSides = []
        FrameVisible = True
      end
      object edtHumidity: TRzDBEdit
        Left = 305
        Top = 199
        Width = 118
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'Humidity_dbl'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 10
      end
      object cmbPackedBy: TRzDBLookupComboBox
        Left = 305
        Top = 150
        Width = 1058
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        BevelEdges = []
        BevelInner = bvSpace
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clWhite
        Constraints.MaxHeight = 21
        Ctl3D = False
        DataField = 'PackedBy_str'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DropDownRows = 10
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Description'
        ListField = 'Description'
        ListSource = PrepackingDM.dsUsers
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        FlatButtons = False
        DisabledColor = clSilver
        FocusColor = clWhite
        FrameColor = clBtnText
        FrameHotStyle = fsNone
        FrameSides = []
        FrameVisible = True
      end
      object dtePackedDat: TwwDBDateTimePicker
        Left = 1365
        Top = 150
        Width = 108
        Height = 24
        Anchors = [akTop, akRight]
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = ANSI_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'Packed_dat'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Epoch = 1950
        ButtonEffects.Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 7
        UnboundDataType = wwDTEdtDate
      end
      object cmbResultDescription: TRzDBLookupComboBox
        Left = 443
        Top = 1
        Width = 1091
        Height = 24
        Hint = 'Description'
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        Constraints.MaxHeight = 21
        Ctl3D = False
        DataField = 'ProductCode_ID'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DropDownRows = 20
        KeyField = 'ProductCode_ID'
        ListField = 'Description_str'
        ListSource = PrepackingDM.dsProducts
        ParentCtl3D = False
        TabOrder = 1
        DisabledColor = clSilver
        FocusColor = clWhite
        FrameSides = []
        FrameVisible = True
      end
      object edtExpectYield: TRzDBEdit
        Left = 311
        Top = 28
        Width = 134
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'ExpectedYield_int'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 2
      end
      object edtActualYield: TRzDBEdit
        Left = 311
        Top = 107
        Width = 134
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'FinalYield_int'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
      end
      object cmbResultICN: TRzDBLookupComboBox
        Left = 312
        Top = 1
        Width = 134
        Height = 24
        Hint = 'ICN'
        Color = clWhite
        Constraints.MaxHeight = 21
        Ctl3D = False
        DataField = 'ProductCode_ID'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DropDownRows = 20
        KeyField = 'ProductCode_ID'
        ListField = 'ICN_str'
        ListSource = PrepackingDM.dsProducts
        ParentCtl3D = False
        TabOrder = 0
        DisabledColor = clSilver
        FocusColor = clWhite
        FrameSides = []
        FrameVisible = True
      end
      object dteExpiryDate: TwwDBDateTimePicker
        Left = 630
        Top = 200
        Width = 114
        Height = 22
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = ANSI_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clWhite
        DataField = 'ResultExpiry_dat'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        Epoch = 1950
        ButtonEffects.Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 12
      end
      object Button2: TButton
        Left = 2
        Top = 148
        Width = 208
        Height = 90
        Action = PrepackingDM.atnPostandClose
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object edtTemperature: TRzDBEdit
        Left = 517
        Top = 200
        Width = 34
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'Temperature_dbl'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 11
      end
      object RzDBEdit1: TRzDBEdit
        Left = 311
        Top = 54
        Width = 134
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'ExpectedUnits_int'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
      end
      object RzDBEdit2: TRzDBEdit
        Left = 311
        Top = 80
        Width = 134
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'CalcYield_int'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
      end
      object RzDBEdit3: TRzDBEdit
        Left = 1134
        Top = 200
        Width = 71
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'AdditionalCost_mon'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 14
        OnExit = RzDBEdit3Exit
      end
      object RzDBEdit4: TRzDBEdit
        Left = 575
        Top = 107
        Width = 134
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'ResultCost_mon'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 17
      end
      object RzDBEdit5: TRzDBEdit
        Left = 893
        Top = 200
        Width = 144
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'ResultBatchNumber_str'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 13
        OnExit = RzDBEdit3Exit
      end
      object lblResultDescription: TRzDBEdit
        Left = 311
        Top = 2
        Width = 1220
        Height = 24
        DataSource = PrepackingDM.dsqryPrepackingWorker
        DataField = 'ResultantItem_str'
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FocusColor = clWhite
        FrameColor = clBtnFace
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameSides = []
        FrameVisible = True
        ParentFont = False
        TabOrder = 18
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1540
      Height = 40
      Align = alTop
      Color = clWhite
      TabOrder = 1
      object lblPrepackRefNo: TDBText
        Left = 1167
        Top = 1
        Width = 143
        Height = 38
        Align = alRight
        Alignment = taRightJustify
        AutoSize = True
        Color = 16383986
        DataField = 'PrepackingRefNo_str'
        DataSource = PrepackingDM.dsqryPrepacking
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblPreposted: TLabel
        Left = 326
        Top = 1
        Width = 177
        Height = 38
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Stock Issued'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblLocked: TLabel
        Left = 1310
        Top = 1
        Width = 229
        Height = 38
        Align = alRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Locked by another user'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblPosted: TLabel
        Left = 1
        Top = 1
        Width = 138
        Height = 38
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Posted'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblBrowseOnly: TLabel
        Left = 139
        Top = 1
        Width = 187
        Height = 38
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Browse Only'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -28
        Font.Name = 'Haettenschweiler'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object btnPrint: TRzBmpButton
        Left = 10
        Top = 0
        Width = 32
        Height = 32
        Bitmaps.TransparentColor = clWhite
        Bitmaps.Up.Data = {
          42080000424D4208000000000000420000002800000020000000200000000100
          1000030000000008000000000000000000000000000000000000007C0000E003
          00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
          31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
          29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
          C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
          9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
          D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
          B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
          3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
          B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
          3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
          9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
          3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
          EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
          3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
          31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
          3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
          734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
          3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
          9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
          3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
          9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
          3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
          F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
          3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
          BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
          3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
          DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
          FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
          DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
          524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
          F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
          D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
          9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
          1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
          7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
          7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
          9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
          9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
          BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
          DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
          DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
          FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
          D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7F}
        Color = clBtnFace
        Action = PrepackingDM.atnPrintReport
        PopupMenu = PopupMenu2
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 284
    Width = 1542
    Height = 37
    Align = alTop
    Color = clWhite
    TabOrder = 2
    object ElSpeedButton17: TElSpeedButton
      Left = 208
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      PullDownInterval = 0
      PullDownEnabled = True
      Flat = True
      NormalImage.Data = {
        CA050000424DCA050000000000008A0300002800000018000000180000000100
        08000000000040020000610F0000610F0000D500000000000000A96E6700AA70
        6900AA716A00AC746C00AC746D00AC746E00AE776F00AE787000AE797100AF79
        7200AF797300AF7A7300B07C7500B17C7500B17D7500B17E7700B27E7700B27F
        7700B3817A00B4837A00B5847A00B5847C00B5847D00B6867E00B7887F00B787
        8000B7898000B7898100B8898300B88A8400B88B8400BA8C8700BC8F8A00BE94
        8A00BF978F00BF989000C29B9000C39E9200C29D9400C39F9700C4A09600C5A0
        9B00C6A49A00C7A49F00C7A79E00C9A99D00C8A89F00C7A6A000C9AAA400CAA9
        A400CAAAA500CAACA200CBADA300CBADA700CCAEA800CEB2AD00D0B6A800D0B8
        AE00D3BBAF00D0B5B000D3B8B400D3BCB300D3BDB200D3BCB400D4BEB500DFC1
        9D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4A300DFC4
        A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9AD00DFC9
        AE00DFCAAF00D8C4B200D9C7B400D8C4BF00DAC8B700DFCAB000DFCBB000DFCB
        B100DFCCB200DAC8B900DECDB900DECEBA00E0C29F00E0C3A000E0C3A100E0C4
        A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7A800E1C7A800E1CA
        AD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CCB100E2CDB300E0CD
        B400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CEB600E0CFB800E0CF
        B900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0BC00E0D1BD00E0D2
        BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5BD00DAC6C200DCC7
        C400DDCBC800E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D4C500E1D5
        C400E2D6C500E3D6C400E2D6C600E2D7C600E3D7C700E0D3CC00E1D2CE00E2D0
        CE00E1D7CB00E3D8C800E3DACC00E4D9CA00E5DBCB00E4DACC00E4DBCD00ECDA
        C500ECDBC600E3D9D200E5DDD000E5DDD100E5DED200E5DED300E6DFD400E6DF
        D500EFE1CF00E6E0D500E7E0D600E7E1D800E7E0DB00E8E1D600E8E2D900E8E3
        DA00E9E3DE00EBE2DF00E9E4DC00E9E5DD00E9E5DE00EAE4DC00EAE6DF00ECE6
        DF00F0E1D000F0E2D100F3E7DA00F3E8DA00EBE7E200EDE4E200ECE6E200EDE9
        E400EDE9E500EEEAE500EEEAE600EEEBE700F0EDEA00F1ECEA00F1EEEC00F2EF
        ED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7F600FCF9F500FBFAFA00FDFC
        FB00FEFDFD00FEFEFE00FFFFFF00D4D4D4D4D4D4D4D4D3CBBCAAAABCCBD3D4D4
        D4D4D4D4D4D4D4D4D4D4D4D4CFA16344494C4A474163A1CFD4D4D4D4D4D4D4D4
        D4D4D4BB444E7479797873725A514943BBD4D4D4D4D4D4D4D4D186487D818181
        807F7B78737159504286D1D4D4D4D4D4D487678C8D8D8D8C8B8281807B78725A
        524587D4D4D4D4D4BB49929596969695928E8C82817C78725A5241BBD4D4D4CF
        5E939D9FA0A0A09F9D9B948E8B817F7872594F43CFD4D4A16EA0A4A5A6A6A6A5
        A4A09D96918C817C78715748A2D4D3629EA6A8A9ACA940231003030E21388281
        7B735A4F63D3CB64A7ABADB197191B27162E2C15281813538078725841CBBD6C
        ACB0B5A30B35AE1E3F0C0C391A902D07547B735A46BDBA7AB0B6B21C2FC58837
        0A020108333A9B25145C787149BABA7EB5BEC01D31C98A3B36550009343E9D24
        145D797249BABD70B8C2C6B30D3CC9C7C62B0F3D1B9A2A065681797247BDCB68
        BEC5C8CCBF1F2089983230162617155B8D817B7342CBD363B7C5C9CDD0D29929
        12050411223E9C968D817B6D63D3D4A185C5C8CCCED0CECCC8C5BEB4ACA6A096
        8D817B4DA2D4D4CF5FB9C6CACCCDCCCAC6C2B8B1A9A59F958C817343CFD4D4D4
        BB6BC3C6C8C9C8C6C4BEB5ADA8A49D928B8046BBD4D4D4D4D48776C1C5C5C5C2
        BEB6B0ABA6A09B8E824B87D4D4D4D4D4D4D1866BB7BEBEB8B5B0ACA7A49D9483
        4886D1D4D4D4D4D4D4D4D4BB6084AFB1ADABA7A49F8F6A44BBD4D4D4D4D4D4D4
        D4D4D4D4CFA165666F7775696163A1CFD4D4D4D4D4D4D4D4D4D4D4D4D4D4D3CB
        BCAAAABCCBD3D4D4D4D4D4D4D4D4}
      DisabledImage.Data = {
        7A040000424D7A040000000000003A0200002800000018000000180000000100
        08000000000040020000610F0000610F00008100000000000000B6B3B200B6B4
        B300B7B4B300B8B5B400B9B6B500B9B7B600BAB7B700BBB8B700BBB9B800BCB9
        B800BDBAB900BDBABA00BDBBBA00BEBBBB00BEBCBB00BFBCBC00BFBDBC00C1BF
        BE00C2BFBF00C2C0BF00C3C1C000C4C2C200C6C3C300C6C4C400C7C6C500C8C6
        C500C9C8C700CBC9C800CBC9C900CBCAC900CDCCCB00CCCDCD00CDCCCC00CDCD
        CE00CDCECE00CECDCC00CECECF00CECFCF00CFCFD000D0CECE00D0CFCF00D1D0
        CF00D0D0D100D1D2D200D2D1D000D3D2D100D2D2D300D3D3D300D3D3D400D4D3
        D200D4D3D300D4D4D500D5D4D400D5D5D500D5D5D600D5D6D600D6D5D500D6D6
        D700D6D7D700D7D6D600D7D7D600D7D7D800D7D8D800D8D7D600D8D8D900D8D9
        D900D9D8D800D9D9DA00D9DADA00DAD9D900DADADA00DADADB00DADBDB00DBDB
        DB00DBDBDC00DBDCDC00DCDBDA00DCDCDC00DCDDDD00DDDDDD00DEDDDD00DEDE
        DE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E1
        E100E2E2E200E2E3E300E3E3E300E3E4E400E4E3E200E4E3E300E4E4E300E4E4
        E400E5E5E500E5E6E600E6E6E600E7E7E700E8E7E700E8E8E800E9E9E900E9EA
        EA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEEEE00EEEFEF00EFF0
        F000F0F0F000F0F1F100F2F2F200F3F3F300F4F3F300F4F4F400F5F5F500F6F6
        F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFFFF008080
        8080808080807F7B757171757B7F80808080808080808080808080807D6D584B
        413D3A3E48586D7D80808080808080808080807254443630302E2A2624253752
        7280808080808080807E694E403D3D3D3936332E2A26222544697E8080808080
        80694E464747474643403D39332E2A24223E69808080808072514D4F5151514F
        4D4946403D362E2A242244728080807D545355575A5A5A5755534F49433D362E
        2A2222527D80806D545A616262626262615A555149433D362E261F376D807F58
        61626565676542190A0303091528403D332A2422587F7B556465676A6013111D
        0F231E0E1A100E2F392E2621487B755A67686C6508296A14450C0C3811511D05
        30332A243E75725C686C6C142373533408020107273453170D332E2637727261
        6C6F6E122D77593B2C500006293855180B3330263772755D6E71746E094C7674
        7423083F135A2004353D302A3E757B586F7375796E14195F663231111C120D3C
        473D332A487B7F5A6E73777A7C7F5E1B0900000716345751473D332B587F806D
        657375797B7C7B7975716E6B67625A51473D333D6D80807D56707478797A7978
        74716E6A6562574F463D33527D808080725D727475777574726F6C676561554D
        43394B728080808080696371737373716F6C6865625A5349404A698080808080
        807E695D6E6F6F6E6C68676461554F494E697E80808080808080807256646B6A
        6765646157514F547280808080808080808080807D6D5B585B5B5A5552586D7D
        80808080808080808080808080807F7B757171757B7F8080808080808080}
      MouseInImage.Data = {
        0A060000424D0A06000000000000CA0300002800000018000000180000000100
        08000000000040020000610F0000610F0000E50000000000000059A2EC0059A3
        ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
        DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
        E10072AAE20072ABE30075B0EB0075B0EC00AE736400AF756600AF766700B178
        6900B1786A00B1796A00B1796B00B27C6D00B37C6D00B37D6F00B37E6F00B37E
        7000B47E7000B5807200B5817200B5817300B6827400B6837400B6837500B885
        7800B8877800B9887800B9887900B9887A00BA8A7C00BA8B7E00BB8C7D00BB8D
        7E00BB8D7F00BC8D8000BC8E8100BC8F8200BE90840084ADD50086AED50086AF
        D60084B0DB0087B0D80085B2DD0096B3CD0096B3CF0097B3CE0095B4D00095B5
        D10097B5D20097B7D40098B9D90099BBDC0088B5E10089B7E4008AB9E70089B9
        EA0089BEF4008ABEF40098BDE00098BDE10099BEE2009ABFE4009CC1E6009CC2
        E9009AC7F600ABD1F700ACD1F700ADD2F700AED2F700BEDBF900BFDBF900C093
        8700C1978800C29B8D00C39B8E00C49E8E00C5A09000C5A09300C7A39400C6A2
        9600C8A39900C9A79800CAA79D00CBAB9B00CAA99C00CAA89E00CAAA9D00CCAC
        A200CDACA300CDADA300CCAEA100CDAFA200CEB0A600CFB0A700D1B4AC00D3B7
        AF00D2B8A700D2BAAD00D4BDAF00D5BBB300D4BDB200D4BEB100D5BEB100D4BE
        B300D2C5B400D2C6B500D2C6B600D6C0B400D3CABB00D3CBBE00D3CCBF00D8C5
        B200DAC7B400D9C6BE00DBC9B600DDCAB000DFCAB000DFCBB000DFCBB100DFCC
        B200DBC8B900DECDB900DECEBA00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
        B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3CE
        C200D4CFC500DBC8C100DDC9C300DECCC700D5D2CB00D6D3CC00DED2C000DFD3
        C200D7D7D300DBDEDE00DDE1E400DFE3E600DAEBFB00E1D4C000E1D4C100E1D5
        C200E1D5C300E1D4C500E1D5C400E0D5C600E2D6C500E2D6C600E2D7C600E3D7
        C700E2D3CE00E0D4CB00E2D7CB00E4D2CE00E3D8C800E3DACC00E4D9CA00E4DA
        CC00E4DBCD00E3D9D200E5DDD000E5DDD100E5DED200E5DED300E6DFD400E6DF
        D500E6E0D500E7E0D600E7E1D800E7E1DB00E8E2D900E8E3DA00E9E3DE00EBE2
        DF00E9E4DC00E9E5DD00E9E5DE00EAE6DF00EBE7E200EDE4E200ECE6E200EBE8
        E600EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EDEA00F1EE
        EC00F2EFED00F3EFED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FB
        FE00FDFEFE00FEFDFD00FFFFFF00E4E4E4E4E4E4E4E4E2A657535357A6E2E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4D652060C3B4140390B0652D6E4E4E4E4E4E4E4E4
        E4E4E456034380929291908F897C3F0256E4E4E4E4E4E4E4E4E14A1299979797
        96959391908E887B094AE1E4E4E4E4E4E44B3CA1A9A9A9A8A798979693918F89
        85374BE4E4E4E4E45513ADB0B1B1B1B0AEAAA8989794918F89850855E4E4E4D6
        019FB8B9BABABAB9B8B6AFAAA79795918F887A00D6E4E45245BABCBDBEBEBEBD
        BCBAB8B1ACA89794918E863D52E4E207A2BEC0C1C3C17D5C271A19255A729897
        9390897A06E2A60EBFC2C4C7B32F32612D68662C60302A8196918F870AA65847
        C3C6CBBB226EC5357923247331AB651E829390893858554EC6CCC83367D59B70
        2118171F6C74B65E2B8B918E3E54554FCBCED0346ADA9D716F8316206D78B85D
        2B8C928F3E545848CDD2D7C92375DBD8D764267632B4631D8497928F3958A610
        CED5D9DDCF36599CB26B692D5F2E2D8AA99793900BA6E207A4D5DADEE0E3B562
        291C1B285B77B7B1A997937E06E2E45251D5D9DDDFE0DFDDD9D5CECAC3BEBAB1
        A997934252E4E4D605A5D7DCDDDEDDDCD7D2CDC7C1BDB9B0A8977F00D6E4E4E4
        5515D3D7D9DAD9D7D4CECBC4C0BCB8AEA78D1155E4E4E4E4E44B49D1D5D5D5D2
        CECCC6C2BEBAB6AAA03A4BE4E4E4E4E4E4E14A14A4CECECDCBC6C3BFBCB8AF9A
        124AE1E4E4E4E4E4E4E4E4560450A3C7C4C2BFBCB99E440356E4E4E4E4E4E4E4
        E4E4E4E4D652070F474D4C460D0752D6E4E4E4E4E4E4E4E4E4E4E4E4E4E4E2A6
        57535357A6E2E4E4E4E4E4E4E4E4}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000883F28008A42
        2C008A432C008B452F008C452F008C4630008D483200904D3700904E3800924F
        3900924F3B0093513B0093523C0093523D0094523E0094543F00945440009657
        420097594400995C4700995D49009A5E4A009C614D00A16A5700A26C5600A16A
        5800A26B5900A36C5900A36C5A00A36D5A00A5715E00A6715F00A5716000A672
        6000A7726100A7746000A7756200A9786600AA786600AA786700AD7D6D00B081
        7300B1857100B0847200B3877700B58B7D00CF9F7900CFA07900CFA07A00D0A1
        7B00D0A17C00D1A37D00D1A27E00D1A37E00D1A47E00D1A47F00D1A57F00D2A4
        7F00B88F8000B8918200BB968600BC968700BC978A00BC988800BE9B8C00C09C
        9000C29D9100C2A08D00C2A18E00C2A19200C3A49700C7A99800D2A58000D2A7
        8300D2A88500D2A98600D2A88600D4AB8700D3A98800D4AC8900D4AD8A00D4AE
        8C00D4AE8D00D5AE8E00D5B08F00D6B18F00D6B29000D6B39200D6B39500D7B4
        9400D7B59600D7B59800D7B89B00D8B79B00D9B79C00D9BA9E00C9AEA200CAAE
        A400CBAEA500CAAFA600CCAFA600CFB7A500CCB1A800CFB3AB00CFB8AD00D0B7
        AF00D9BBA000D9BCA100DABDA300DABDA500DEBCA200DEBDA200DBC0A800DCC1
        AA00DEC5A900DEC6AA00DFCAAE00D4C1B100D6C3B500D6C2B900D6C4B800D8C7
        B900DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCCB300DFCDB700DBCA
        B900DBCCBF00E2C5AF00E0CBB100E0CCB300E0CDB400E0CDB500E0CEB600E0CE
        B700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0B900E0D0
        BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E0D1BD00E1D1
        BC00E0D2BD00E1D2BD00E0D2BE00E1D3BE00E1D3BF00E1D2BF00E3D2BD00E2D3
        BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1BF00D9C8C100DACAC000DCCA
        C500DCCFC200DCCDC400DCCDC700E1D3C100E0D3C300E1D4C100E1D4C200E1D5
        C300E2D5C300E3D5C300E2D5C400E2D6C500E3D7C500E2D7C600E3D7C700E2D6
        C600E4D5C200E4D7C600E1D5CB00E1D5CF00E2D7CD00E6D8C600E3D8C800E4D8
        C800E4D9C800E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9C900E7DAC900E4DA
        CC00E4DBCD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDACB00EDDACC00E5D8
        D400E4DAD500E4DCD000E5DDD100E5DCD200E5DDD200E5DED300E6DCD000E7DD
        D100E7DED200E5DDD700E7DFD500E7DFD600E6E0D500E7E0D600E7E1D800E8E0
        D700E9E1D700E9E0D800E8E2D900E9E2D800E9E2DA00E8E3DA00EBE2DB00E9E5
        DD00EAE4DC00EAE5DE00EAE6DF00EBE6E000EBE7E000EBE7E100EBE7E200EDE8
        E100EDE9E500EDE8E400EFE9E400EEEAE500EEEBE700EEEBE800EFECE900F4EA
        E200F0ECE800F1EDEB00FAF5F200FDFBFA00FEFEFD00FFFFFF00FFFFFFFFFFFF
        FFFFFEF9CF8E8ECFF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83353751575750
        333583FCFFFFFFFFFFFFFFFFFFFFFFA6305A7D8C8C8B88877E73562EA6FFFFFF
        FFFFFFFFFFFD6E4A809C9EB5C4D8D9CDBB8F7C73486EFDFFFFFFFFFFFF6F549E
        B0B5C9D4DDE6EBEFEFEECB86744D6FFFFFFFFFFFA54BB4B7B6C3D3DCE6EDF2F7
        F8F7F2E58A7438A5FFFFFFFC30ADC3B2B7C6D6E1EBDBACA9D1FBFBF2E285722E
        FCFFFF835FCAB6B0B8CABE4015060000020E28A7EFC57A5583FFFE37B8CC9BB0
        B875121F461A6467422962103BE1887234FEF94AD7C297B0810C3FE61C630500
        224169D2143DB37B33F9D05BDFB393AF1823D6BC27200A0D00662DF2A801657E
        4FD0A46CE4A1919E4309AAD52C77BD0304613EED3A13AE8656A3A46DE99B8B9A
        B02A1176DDE668256019AB2C0879C18756A3D05DECBA88929EB5440B2445161D
        07170F2182CAB28750D0F94EF0CE7F8B97AFB5AE472B1E1B263C78D3C9C09E88
        36F9FE39E3F17E868C98AFB5B8C3C6CACACAC6C3B8B5937A34FEFF8371F6C87C
        878C979EB0B5B7B8B8B8B7B5B09E915983FFFFFC31E8FA957C868B929A9EAFB0
        B0B0AF9E9D9C7D2FFCFFFFFFA553F2F4947B7F888B91939797979399A29649A5
        FFFFFFFFFF6F5EF3F5BF847C7F868889898BA1B19C526FFFFFFFFFFFFFFD6E53
        E2F0EAC7A0909099B3C1B98D4A6EFDFFFFFFFFFFFFFFFFA63270DAE7E0DED7CC
        C99F5C30A6FFFFFFFFFFFFFFFFFFFFFFFC83374C5B6B6A58493783FCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEF9CF8E8ECFF9FEFFFFFFFFFFFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = atnColSelect
      DockOrientation = doNoOrient
    end
    object ElSpeedButton11: TElSpeedButton
      Left = 178
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      PullDownInterval = 0
      PullDownEnabled = True
      PullDownMenu = PopupMenu1
      Flat = True
      NormalImage.Data = {
        32050000424D3205000000000000F20200002800000018000000180000000100
        08000000000040020000610F0000610F0000AF000000000000009F6AB600A16C
        B700B690BF00BB97C200BD9BC500C2A4CA00C6A9C000C7ACC600C7ACC700CAAF
        C000C9AFC400C8ADC800C9AFC800C9AECA00C9AECD00CBB2C400C9B0CB00CAB0
        CA00CAB1CA00CAB1CB00CAB1CD00CAB1CE00CAB1CF00CBB2CD00CEB7CB00CDB5
        CD00CFB9C900CFB8CB00CBB3D000D0BBC900D0BACF00D1BCCC00D3BECD00D3BE
        D500DFC19D00DFC19E00DFC29E00DFC29F00DFC2A000DFC3A100DFC4A200DFC4
        A300DFC4A400DFC5A500DFC5A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9
        AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200E0C29F00E0C3
        A000E0C3A100E0C4A300E1C4A200E1C5A300E0C5A500E1C5A400E0C6A600E0C7
        A800E1C7A800E1CAAD00E0CAAE00E2C9AC00E1CBB000E0CDB300E1CCB200E2CC
        B100E2CDB300E0CDB400E0CDB500E0CEB600E0CFB700E2CEB500E3CEB500E2CE
        B600E0CFB800E0CFB900E2D0B700E0D0BA00E0D0BB00E0D1BB00E3D0B900E0D0
        BC00E0D1BD00E0D2BE00E0D3BF00E1D2BE00E4D2BB00E5D3BE00E9D5BC00E9D5
        BD00D6C4CA00D6C6CE00D8C7CF00DBCAC500DDCFCA00DCCFCE00DCCCDB00DFD5
        CF00DFD4D100E1D4C000E1D4C100E1D5C200E1D5C300E3D5C300E1D5C400E2D6
        C500E3D6C400E2D6C600E2D7C600E3D7C700E3D7C800E3D8C800E4D9CA00E5DB
        CB00E4DACC00E4DBCD00ECDAC500ECDBC600E1D7D800E1D8D000E5DDD000E5DD
        D100E4DDD200E5DED200E5DED300E6DFD400E6DFD500E4DBE000EFE1CF00E6E0
        D500E7E0D600E7E1D800E8E1D600E8E2D900E8E3DA00E9E4DC00E9E5DD00E9E5
        DE00EAE4DC00EAE6DF00ECE6DF00F0E1D000F0E2D100F3E7DA00F3E8DA00E8E2
        E000E9E5E100EBE7E200EDE9E400EDE9E500EDE9E600EEEAE500EEEAE600EEEB
        E700F0EDEA00F1EEEC00F2EFED00F3F0EE00F8F2EA00F5F3F100F5F4F200F8F7
        F600FCF9F500FBFAFA00FDFCFB00FEFEFE00FFFFFF00AEAEAEAEAEAEAEAEADA6
        97888897A6ADAEAEAEAEAEAEAEAEAEAEAEAEAEAEAA7C3D252A2D2B28223D7CAA
        AEAEAEAEAEAEAEAEAEAEAE96252F4E5353524D4C37322A2496AEAEAEAEAEAEAE
        AEAC6029575B5B5B5A5955524D4B36312360ACAEAEAEAEAEAE61416C6D6D6D6C
        6B5C5B5A55524C37332661AEAEAEAEAE962A717475757574716E6C5C5B56524C
        37332296AEAEAEAA3872787A7B7B7B7A7877736E6B5B59524C363024AAAEAE7C
        487B8081071A7F81807B7875706C5B56524B34297DAEAD3C798385866418200B
        6A83807A76706B5B554D37303DADA63E84898B8E8F1E7E040D6384807A756E5C
        5A524C3522A698468A8D90939B99050E14111B828078736C5B554D3727989554
        8D919B9DA1A19E211C14130C697B776E5C59524B2A959558909BA0A2A3A4A3A2
        68161712086278716B5A534C2A95984A939DA2A5A7A8A7A5A287151003000F74
        6C5B534C2898A6429BA1A3A7A9ABA9A7A3A19A19010266066D5B554D23A6AD3D
        92A1A4A8ABAEABA8A4A19B8F1F1D7B096D5B55473DADAE7C5FA1A3A7A9ABA9A7
        A3A19B8F8A670A656D5B552E7DAEAEAA3994A2A5A7A8A7A5A29D938E86817A74
        6C5B4D24AAAEAEAE96459FA2A3A4A3A2A09B908B858078716B5A2796AEAEAEAE
        AE61509CA1A1A19D9B918D89837B776E5C2C61AEAEAEAEAEAEAC6045929B9B93
        908D8A848078735D2960ACAEAEAEAEAEAEAEAE963A5E8C8E8B8984807A6F4425
        96AEAEAEAEAEAEAEAEAEAEAEAA7C3F4049514F433B3D7CAAAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEADA697888897A6ADAEAEAEAEAEAEAEAE}
      DisabledImage.Data = {
        DE030000424DDE030000000000009E0100002800000018000000180000000100
        08000000000040020000610F0000610F00005A00000000000000ABABAC00BCBC
        BD00C3C3C400C4C4C500C8C8C900C9C9CA00CBCBCC00CCCCCD00CCCDCD00CDCD
        CD00CDCDCE00CDCECE00CECECE00CECECF00CECFCF00CFCFCF00CFCFD000D0D0
        D000D0D0D100D1D1D100D1D1D200D1D2D200D2D2D300D3D3D300D3D3D400D4D4
        D400D4D4D500D5D5D500D5D5D600D5D6D600D6D6D700D6D7D700D7D7D800D7D8
        D800D8D8D900D8D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDB
        DB00DBDBDC00DBDCDC00DCDCDC00DCDDDD00DDDDDD00DEDEDE00DEDFDF00DFDF
        DF00DFE0E000E0E0E000E0E1E100E1E1E100E1E2E200E2E2E200E2E3E300E3E3
        E300E3E4E400E4E4E400E5E5E500E5E6E600E6E6E600E6E7E700E7E7E700E8E8
        E800E9E9E900E9EAEA00EAEAEA00EBEBEB00ECECEC00ECEDED00EDEDED00EEEE
        EE00EEEFEF00EFF0F000F0F0F000F0F1F100F2F2F200F3F3F300F4F4F400F5F5
        F500F6F6F600F7F7F700F8F8F800FBFBFB00FCFCFC00FDFEFE00FEFEFE00FFFF
        FF00595959595959595958544F4B4B4F54585959595959595959595959595959
        5647362B23201F212836475659595959595959595959594C32251C1818161210
        0D0E1D304C595959595959595957432D222020201E1C1A1612100B0E25435759
        5959595959432D26272727262422201E1A16120D0B214359595959594C2F2C2E
        2F2F2F2E2C292622201C16120D0B254C59595956323133353737373533312E29
        24201C16120B0B305659594732373B3C0717373C3B37332F2924201C1610081D
        475958363B3C404027161E0C353C3B352F2924201A120D0B365854333E404144
        451B3B030D273E3B352F29221E16100A28544F374142464849450510130F193C
        3B332E26201A120D214F4C394246494B4D4D4A1F1413110C35373129221C1610
        1D4C4C3B46494C4E4F504F4E311313100922332C241E18101D4C4F3A484B4E51
        525352514E3F141102000F2E26201812214F5436494D4F52545554524F4D4613
        0001290427201A1228545837484D505355595553504D4945171A370627201A15
        36585947404D4F52545554524F4D4945412C091E27201A2047595956344A4E51
        525352514E4B4844403C352E26201A30565959594C3A4C4E4F504F4E4C494641
        403B332C241E2B4C5959595959433D4B4D4D4D4B494642403C373129222A4359
        595959595957433A484949484642413E3B332E292D435759595959595959594C
        343E454441403E3B352F2E324C59595959595959595959595647383638383733
        30364756595959595959595959595959595958544F4B4B4F5458595959595959
        5959}
      MouseInImage.Data = {
        5E050000424D5E050000000000001E0300002800000018000000180000000100
        08000000000040020000610F0000610F0000BA0000000000000059A2EC0059A3
        ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
        DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
        E10072AAE20072ABE30075B0EB0075B0EC0093527D0094557E00AE809900B389
        9F00B68EA300BB97AC0084ADD50086AED50086AFD60084B0DB0087B0D80085B2
        DD0096B3CD0096B3CF0097B3CE0095B4D00095B5D10097B5D20097B7D40098B9
        D90099BBDC0088B5E10089B7E4008AB9E70089B9EA0089BEF4008ABEF40098BD
        E00098BDE10099BEE2009ABFE4009CC1E6009CC2E9009AC7F600ABD1F700ACD1
        F700ADD2F700AED2F700BEDBF900BFDBF900C19FA700C2A2AD00C2A2AE00C5A6
        AB00C4A6AE00C3A3B000C3A5B000C3A5B100C3A4B300C4A6B300C5A7B300C5A7
        B600C5A8B300C7AAB000C5A8B500C5A9B500C6A9B800CAAFB700C8ACB800CBB1
        B700CAB0B800CBB2BB00CCB4B800CDB5BB00CFB8BD00D3BFBE00CFB7C200D2C5
        B400D2C6B500D2C6B600D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCB
        B000DFCBB100DFCCB200DAC8BE00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
        B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3C0
        C100D5C3C300D3CEC200D4CFC500D9C7CE00DBCDC400DACCC700D5D2CB00D6D3
        CC00DED2C000DFD3C200DED3CB00DED2CC00D7D7D300DBDEDE00DDE1E400DFE3
        E600DAEBFB00E1D4C000E1D4C100E1D5C200E1D5C300E1D5C400E0D5C600E2D6
        C500E2D6C600E2D7C600E3D7C700E3D7C800E1D7CE00E3D8C800E4D9CA00E4DA
        CC00E4DBCD00E0D4D200E5DDD000E5DDD100E4DCD200E5DED200E5DED300E6DF
        D400E6DFD500E3D9DA00E6E0D500E7E0D600E7E1D800E7E1DD00E8E2D900E8E3
        DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00E9E4E000EBE7E200EBE8E600ECE9
        E500EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EF
        ED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
        FF00B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        AE37060C2026251E0B0637AEB9B9B9B9B9B9B9B9B9B9B93B03285E6A6A696867
        635B24023BB9B9B9B9B9B9B9B9B72F12736F6F6F6E6D6B696866625A092FB7B9
        B9B9B9B9B930217B8585858483706F6E6B6967635F1C30B9B9B9B9B93A13888B
        8C8C8C8B898684706F6C6967635F083AB9B9B9AE0179909192929291908F8A86
        836F6D6967625900AEB9B9372A9294953F518E959492908C87846F6C69666022
        37B9B8077E97999A724F56437D9794918D87836F6B68635906B8820E989C9EA1
        A253931A45719894918C86706E6967610A823D2C9DA0A3A5A79F1B464C475296
        94908A846F6B68631D3D3A33A0A4A7AAADADA9584E4C4A447C928F86706D6966
        23393A34A3A7ACAFB0B1B0AF75494D4840579089836E6A6723393D2DA5AAAFB2
        B3B4B3B2AF9B4C4719164B8B846F6A671E3D8210A7ADB0B3B5B6B5B3B0ADA650
        1718763E856F6B680B82B80780ADB1B4B6B9B6B4B1ADA7A255549241856F6B5C
        06B8B93736ADB0B3B5B6B5B3B0ADA7A29D774264856F6B2737B9B9AE0581AFB2
        B3B4B3B2AFAAA5A19A95918B846F5D00AEB9B9B93A15ABAFB0B1B0AFACA7A39E
        999490898365113AB9B9B9B9B9302EA8ADADADAAA7A4A09C97928F867A1F30B9
        B9B9B9B9B9B72F1480A7A7A5A3A09D9894908A74122FB7B9B9B9B9B9B9B9B93B
        04357FA19E9C9894917829033BB9B9B9B9B9B9B9B9B9B9B9AE37070F2C32312B
        0D0737AEB9B9B9B9B9B9B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9
        B9B9}
      PressedImage.Data = {
        5E050000424D5E050000000000001E0300002800000018000000180000000100
        08000000000040020000610F0000610F0000BA0000000000000059A2EC0059A3
        ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6F00072A7DD0072A8
        DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DABEA006DACEB0072A9
        E10072AAE20072ABE30075B0EB0075B0EC0093527D0094557E00AE809900B389
        9F00B68EA300BB97AC0084ADD50086AED50086AFD60084B0DB0087B0D80085B2
        DD0096B3CD0096B3CF0097B3CE0095B4D00095B5D10097B5D20097B7D40098B9
        D90099BBDC0088B5E10089B7E4008AB9E70089B9EA0089BEF4008ABEF40098BD
        E00098BDE10099BEE2009ABFE4009CC1E6009CC2E9009AC7F600ABD1F700ACD1
        F700ADD2F700AED2F700BEDBF900BFDBF900C19FA700C2A2AD00C2A2AE00C5A6
        AB00C4A6AE00C3A3B000C3A5B000C3A5B100C3A4B300C4A6B300C5A7B300C5A7
        B600C5A8B300C7AAB000C5A8B500C5A9B500C6A9B800CAAFB700C8ACB800CBB1
        B700CAB0B800CBB2BB00CCB4B800CDB5BB00CFB8BD00D3BFBE00CFB7C200D2C5
        B400D2C6B500D2C6B600D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCB
        B000DFCBB100DFCCB200DAC8BE00DED0BE00E0CDB400E0CDB500E0CEB600E0CF
        B800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3BF00D3C0
        C100D5C3C300D3CEC200D4CFC500D9C7CE00DBCDC400DACCC700D5D2CB00D6D3
        CC00DED2C000DFD3C200DED3CB00DED2CC00D7D7D300DBDEDE00DDE1E400DFE3
        E600DAEBFB00E1D4C000E1D4C100E1D5C200E1D5C300E1D5C400E0D5C600E2D6
        C500E2D6C600E2D7C600E3D7C700E3D7C800E1D7CE00E3D8C800E4D9CA00E4DA
        CC00E4DBCD00E0D4D200E5DDD000E5DDD100E4DCD200E5DED200E5DED300E6DF
        D400E6DFD500E3D9DA00E6E0D500E7E0D600E7E1D800E7E1DD00E8E2D900E8E3
        DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00E9E4E000EBE7E200EBE8E600ECE9
        E500EDE9E500ECE9E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EF
        ED00F3F0EE00F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
        FF00B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        AE37060C2026251E0B0637AEB9B9B9B9B9B9B9B9B9B9B93B03285E6A6A696867
        635B24023BB9B9B9B9B9B9B9B9B72F12736F6F6F6E6D6B696866625A092FB7B9
        B9B9B9B9B930217B8585858483706F6E6B6967635F1C30B9B9B9B9B93A13888B
        8C8C8C8B898684706F6C6967635F083AB9B9B9AE0179909192929291908F8A86
        836F6D6967625900AEB9B9372A9294953F518E959492908C87846F6C69666022
        37B9B8077E97999A724F56437D9794918D87836F6B68635906B8820E989C9EA1
        A253931A45719894918C86706E6967610A823D2C9DA0A3A5A79F1B464C475296
        94908A846F6B68631D3D3A33A0A4A7AAADADA9584E4C4A447C928F86706D6966
        23393A34A3A7ACAFB0B1B0AF75494D4840579089836E6A6723393D2DA5AAAFB2
        B3B4B3B2AF9B4C4719164B8B846F6A671E3D8210A7ADB0B3B5B6B5B3B0ADA650
        1718763E856F6B680B82B80780ADB1B4B6B9B6B4B1ADA7A255549241856F6B5C
        06B8B93736ADB0B3B5B6B5B3B0ADA7A29D774264856F6B2737B9B9AE0581AFB2
        B3B4B3B2AFAAA5A19A95918B846F5D00AEB9B9B93A15ABAFB0B1B0AFACA7A39E
        999490898365113AB9B9B9B9B9302EA8ADADADAAA7A4A09C97928F867A1F30B9
        B9B9B9B9B9B72F1480A7A7A5A3A09D9894908A74122FB7B9B9B9B9B9B9B9B93B
        04357FA19E9C9894917829033BB9B9B9B9B9B9B9B9B9B9B9AE37070F2C32312B
        0D0737AEB9B9B9B9B9B9B9B9B9B9B9B9B9B9B8823C38383C82B8B9B9B9B9B9B9
        B9B9}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
    end
    object ElSpeedButton5: TElSpeedButton
      Left = 149
      Top = 1
      Width = 29
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000918FE3009190
        E4009190E5009291E5009291E7009392E800A6A2DC00A6A3DE00B9B5DA00BAB6
        DC00BBB7DD00A9A7E600ABAAE900BBB8E000BDBAE300BEBCE600C7BFD200C5BE
        D400C0BFE900DFC9AC00DFC9AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
        B100DFCCB200DFCCB300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCE
        B800DFCFB800E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CE
        B300E4CFB400E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
        B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
        BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
        BD00E2D3BE00E3D3BF00E5D1B800E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3
        BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C7C1D400C6C1DA00D3CACD00D5CE
        D300DFD4C700DFD5C800DED4CC00DCD4D100DDD6D300DED8D600DFD9D800C8C5
        E000CECCE600CFCEEC00D1CFEB00DAD6E100E0D3C000E0D3C100E1D3C000E0D4
        C100E1D4C100E1D4C200E1D4C300E1D5C300E3D4C100E2D5C300E0D4C500E1D5
        C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6
        C200E6D5C100E4D7C600E0D6CA00E2D7C800E7D8C500E7D9C700E2D8CB00E3D9
        CA00E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DA
        CD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DDCF00E9D7C100E8D6
        C000E8D7C200E9D8C300E9D9C400E8D9C500EBD9C400E8DAC800E8DAC900E9DA
        C800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DD
        CF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDFCD00EDDECD00ECDF
        CF00EDDFCE00EEDFCE00E2DAD100E1DAD600E5DCD000E5DDD100E5DED300E5DE
        D200E7DED200E6DFD500E0DBDC00E2DDDA00E8DED100E9DED000E8DFD300EADF
        D200E2DEE100EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E5E0DB00E7E2
        D900E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2
        DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DF00ECE4DB00F0E3
        D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E2E600E3E1
        EF00E9E5E100EBE6E100EBE7E100EAE7E700ECE7E000E8E5EB00EDE8E200EEE9
        E300ECE9E400EDE9E500EDEAE600EEEAE500EEEAE700EEEBEC00EFECE900EEEC
        F000F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
        EB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
        EF00F3F1F100F4F2F000F5F3F100F4F3F400F7F6F500FAF5F000F8F7F700F9F7
        F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEEFCEB3B3CEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA4D131313131313
        13138EFAFFFFFFFFFFFFFFFFFFFFFFBD1313132317252313131313139DFEFFFF
        FFFFFFFFFFFD3113282836343A34361F26131313134BFDFFFFFFFFFFFF4D1336
        62636362603E3D3A2E1F1513131331FEFFFFFFFFA313676A7070706D6B655F3E
        3A2E2117131313B3FFFFFFFA13377D7A818181807D706B65603D342117131313
        F0FEFE8E137D86A6A9A9A9A7A6817D7069623D2E2C2313138EFFFE1376A7A8AB
        B6B6B6ABABA7A6807069603D2E1C131313FAE71386ABB7C1C4C4C4B9B7B4A8A6
        8070653F3A21251313E7CD23ABB9C5C7D4D4D25A5951594E4E746B623D2E1C13
        13BEB32FB9C5D4DADEDC5A0000000000005170653F2E2C13139DB330C5D4DCE8
        EAEA5C000000000000087D6A603A2117139DCE26C7DAE8EBF3F5F5120C0B0B07
        07517D6B623D2D2313CDEF13D3DCEAF4F6FBF8F6E1D7D0C2ABA77C70633D331B
        13E4FC13C4DCEBF5FBFFFBF4EBE0D4C4B5A97C70633D2D1313FDFE884BDCEAF3
        F8FBF8F4E9DCD4C4B5A97C70633D2D134DFFFEF113C7E8EBF4F4F4EBE8DAC7B9
        ABA77C6D623D2313FAFFFFFDA323D9E8EAEBEAE8DCD4C5B7A886796B603A138E
        FDFFFFFFFF4D29DADEDEDCDAD4C5B9B4A9817065351349FDFFFFFFFFFFFD4D23
        C4D4D4D2C5B9B5A886796B3D132AFDFFFFFFFFFFFFFFFF9D1346B6B9B7B4A886
        7A661313A3FEFFFFFFFFFFFFFFFFFFFEF78E13132328282413134DF1FEFEFEFF
        FFFFFFFFFFFFFEFEFFFFFDE7CDB3B3CEE7FAFDFEFEFEFFFFFFFF}
      DisabledImage.Data = {
        3A040000424D3A04000000000000FA0100002800000018000000180000000100
        08000000000040020000610F0000610F00007100000000000000B7B7B700B7B7
        B800B8B8B900C1C1C200C2C2C200C7C7C700C7C8C800CDCDCE00CECECF00CFCF
        CF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2
        D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
        D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
        D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
        DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
        DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
        E200E2E2E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5
        E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8
        E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEBEB00EBEB
        EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
        EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
        F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
        F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
        7070707070706F69605A5A60696F70707070707070707070707070706D54382A
        211D1B1E2738546D70707070707070707070705B3324191515120C0A08081A31
        5B70707070707070706F4C2C201D1D1D1B1917120B0A0708244C6F7070707070
        704C2A252626262523201D1B17100B08071E4C70707070705A2F2A2D3030302D
        2B28251E1D18100B0807245A7070706D333134373939393734322D27211D1810
        0B0707316D70705433383E41414141413E39343027211D191008071A54706F38
        3D4047474949494747413E373027211D170B0707366F68334347494D5050504D
        4947443E3730271E1A10080724686039494B535557575330302826221C302D25
        1D170B071C5F5B3C4B53565A5C5C2E0000000000002832281E18100A1A5A5B3E
        53575A5E5F614000000000000007302B231B130A1A5A603D555A5E6465675D19
        060303030326342D251D130B1E5F6938575C6065696C6965615C514B473F3930
        261D170B27686F39555C62676C706C67615C555049413930241D1710386F7054
        475C6065696C69655F5A555049413930241D171D5470706D36585D6465676564
        5D59554D4741372D241D17316D7070705B3D5B5D6061605D5B575149473E342B
        211A2A5A70707070704C43595B5B5B5957514B474139322820274C7070707070
        706F4C3B55575755514B49423E342D282C4C6E70707070707070705A36444E4D
        4945423D37302D335A70707070707070707070706D5438373A3A39343138546D
        70707070707070707070707070706F69605A5A60686F7070707070707070}
      MouseInImage.Data = {
        82030000424D8203000000000000420100002800000018000000180000000100
        08000000000040020000610F0000610F00004300000000000000FFFFFF00EFF7
        FF00FFF7F700F7F7F700F7F7EF00DEEFFF00EFEFF700F7EFEF00EFEFE600EFE6
        E600E6E6E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600DED6EF00DEDE
        DE00E6DED600DED6E600ADD6F700E6DECE00E6D6D600D6D6D600E6D6CE00DED6
        CE00D6D6CE00E6D6C500DED6C500E6D6BD009CC5F700DED6BD00CEBDEF009CC5
        EF00D6CEC500D6C5D600E6CEBD00CEBDE6009CC5E600C5BDE600D6CEBD00D6C5
        CE00E6CEB5008CBDF700DECEB5008CBDEF009CBDE6008CBDE6009CBDDE00C5B5
        DE00D6C5B500C5B5D6008CB5E60073B5EF0084B5DE0094B5D6006BADEF0094B5
        CE0073ADE6006BADE6005AA5F70073ADDE0084ADD6005AA5EF006BA5E60073A5
        DE004A21DE00000000000000000002050D14140D050000000000000000000000
        00000000011E3F403E39393E403F1E010000000000000000000000143F37282C
        2C2C2C2C2C32393F140000000000000000002B3A221F1F1F1F1F2C2C2C2C2C32
        412B000000000000002B361C1C1C1C1C1F1F1F1F2C2C2C2C2C3E2B0000000000
        143A1C1B1B1B1B1B1B1C1C1F1F1F2C2C2C2C4114000000013F1A181515151515
        181B1B1C1F1F1F2C2C2C323F0100001E30151515121212151515181B1C1C1F1F
        2C2C2C391E00023F1712121212120F12121215151B1C1C1F2C2C2C323F00053B
        1212120E0E0E0E0E12121215151B1C1F1F2C2C2C40050D34120F0E0E09090E31
        3133333333191B1C1F2C2C2C3E0D142E0F0E0909080813424242424242291B1C
        1F1F2C2C3914142E0E09090808071342424242424229181B1F1F2C2C39140D2F
        0E09080704040625272731313319151B1C1F2C2C3E0D05380908080403020304
        0808090E1212151B1C1F2C2C4005003F0B080704020002040708090E1212151B
        1C1F2C283F00001E26080804030202040808090E1212121B1C1F2C371E000001
        3F0B08070404040708090E0E1215151B1C1F283F010000001435090808070808
        09090E121215181B1F1F3D1400000000002B2F0908080809090E0F1212151B1C
        1F362B000000000000002B3A0B09090E0E0F121215181B223A2B000000000000
        000000143F26110E12121215151A373F140000000000000000000000011E3F3B
        343030363B3F1E01000000000000000000000000000000050D14140D05000000
        000000000000}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000444ADB00444A
        DC00454BDC00565BDF00575DE100585DE200696CDB007578DE007679DE008F90
        DD008F91DF009091DF008285E200A3A2DB00A8A6DA00ACABDF00AFADDC00A9AA
        E700ACAEEC00ADAFEE00B7B7E300BBB9E000DBBFA300DCBFA200DDBFA300DDBF
        A400C3BFD800DCC0A400DCC0A500DCC1A500DDC0A500DCC1A700DCC2A600DCC3
        A800DDC2A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DCC4AB00DDC5
        AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DEC4AC00DFC5AC00DEC6
        AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8B000DEC8B200DEC9B200DFC9
        B300DECAB400DFCBB500DFCDB700DFCEB700DFCCB800DFCEB900E0C5AB00E0C5
        AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8B200E2C9B300E1CB
        B700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E1CC
        B900E0CEB800E0CFB800E1CFB900E0CFBB00E3CCB900E3CCB900E2CDBA00E3CD
        BB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
        B900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CFBE00E0D0B900E0D0
        BA00E1D0BA00E0D1BB00E0D0BC00E0D1BC00E0D1BD00E1D1BE00E1D2BD00E0D2
        BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3BF00E5D0BF00E6D0
        BD00E6D0BE00E6D1BE00E7D2BF00CDCADF00CECADD00D3CFDC00D7D2D900D4D0
        DE00D4D1DF00DBD5D700DDD6D500DBD6DC00DDD7D900DFD8D400C1C0E300C0C0
        E900D7D5E500E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3
        C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
        C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7
        C700E4D7C600E3D7C800E6D6C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DA
        CB00E5D8C900E4D9CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E4DACD00E5DA
        CC00E4DBCE00E4DBCF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4
        C300E8D4C400E9D5C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
        C900EBD9CB00E8DCCF00E3DBD000E5DCD000E5DDD100E7DDD000E6DCD000E6DD
        D300E6DED300E7DED300E6DED400E7DFD500E1DBD900E3DCDA00E7E0D700E7E1
        D900E8E0D500EFE1D500E8E1D800E8E1D900E8E2DA00E9E3DB00E9E3DA00E8E3
        DF00EAE4DC00EAE4DD00EBE5DD00EBE5DF00F0E1D600F0E2D600F0E2D700F0E3
        D700F0E3D800F3E8DF00EBE6E000E8E5E600EBE8E600ECE8E400EDE9E500EEEA
        E700EAE8ED00EEEBE800EDEAED00EFECE900EEECF200F3E8E000F4EAE100F4EA
        E200F5EBE300F2EFED00F6EEE800F7EFE900F7EFEA00F0EEF400F3F0EF00F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF1C26666C2F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF617171717171717
        171741FAFFFFFFFFFFFFFFFFFFFFFF7A1717171716161617171717171EFFFFFF
        FFFFFFFEFEFA17171F16243E96A8B0A36E2117171718FCFFFFFFFFFEFE171716
        7296A8C4CCD6D9E4E4D98C16171717FCFEFFFFFE43173E8B9AA8C4CCD1E4E8EB
        EBEBE7D021171764FEFFFFFA17169A9696A8C4D1D9E8EDF8F8F8EDE8CA161717
        E3FEFE161793968B9AC4CCD6E4EBF3FAFBFAF8EBE499171719FEFD172C876E93
        9AB0C9D6D98A8AEAEA8A8AEEE4D0291717F6C217A8A555939CB0CADA0B010101
        010101EDE4D66C1717E2BA179A8F6B8C9BA9C6D2100101010101017DD9D4991D
        175F5F17C971697296A8B3CB7F0C080808080C8AD7CDA916174B6616D66F536E
        929BABC5CBE0DDE9E7E7DBD5CDC5A32D1741BC17D9953D5572989CB0C9CCD5D5
        D5D5CDCDC8B0961B17BEEF17C9C3383D6D92969CA8C4C9C9C9C9C9C4ABA37134
        17C2F417C9E4384C3F6E8C9A9AA8A4B0B0B0ABAB9A983B1717FAFA1719E9AC34
        4C3D6D7293969A9AA39A9A9793723D1717FAFEEF17D8ED6A384C53556E729393
        8F938C72713F1717F2FDFEFC4517D8EF68343A3D3D69556D6C6C556D743F1717
        FCFEFEFEFA1717E7E8A04C34384C3D3D3D537096351717FAFEFEFFFEFDFA1717
        ADE4DAAC764F536B95A6983F1717F4FEFEFEFFFEFEFEFC191721C7D8D4CDCAC5
        B037171747F6FCFEFEFFFFFEFEFEFEFAF22F171717171717171717DEFEFEFEFE
        FEFFFFFEFEFEFEFEFEFEF9C15F434B78C3EFF6FCFEFEFEFEFEFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.atnDeleteItem
      DockOrientation = doNoOrient
    end
    object ElSpeedButton6: TElSpeedButton
      Left = 119
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F000000010000000000008EB39E008EB4
        9F008FB5A00097B8A30097B8A50097B9A60099BBA8009FBBA800A0BDAA00A0BE
        AB00A1BEAC00A4BDA900A4BEAC00A2C0AF00A6C0AF00A3C1B000A6C2B100A8C3
        B300A9C5B500B1C4B200B2C7B700B7CCBF00B8C5B100B9C6B300B9C6B500BDCD
        C000BFCFC300BFD0C400C3CCBB00C6CBBB00C6CCBA00CFCEBB00CFCEBD00DFC9
        AD00DFC9AC00DFC9AE00DFCAAF00D2CEBB00D2CFBD00DFCAB000DFCBB000DFCB
        B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
        B800DFCFB800D3D0BF00D9D0BD00D9D1BF00E0C9AD00E0CAAD00E0CAAE00E1CC
        B200E3CDB200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CF
        BA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1
        B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E1D3
        BF00E0D3BF00E3D2BD00E3D3BF00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3
        BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00C5CFC100C8CFC000C5D0C200C7D0
        C300C7D2C500C2D3C800CAD2C600CBD5C900CCD9D000CDDAD100D1D1C100D1D3
        C400D4D8CD00DAD3C200DBD5C500DFD7C900D0DCD400D3DFD700D6DBD200D9DC
        D300DFDED400DCDFD800DCE0D900DCE2DB00DFE4DE00E0D3C000E1D3C100E1D4
        C100E0D4C100E1D4C200E0D4C300E3D4C100E2D5C300E1D5C400E0D6C600E2D6
        C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
        C600E7D8C600E3D9CB00E3DACB00E3DACC00E4D9CA00E5DACB00E7DBCB00E4DA
        CC00E4DACD00E4DBCE00E5DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7
        C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDC
        CB00EADCC900E9DCCC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDD
        CC00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00E3DCD000E3DED300E5DC
        D000E5DDD100E5DED300E7DED200E5DFD500E6DFD500E9DED100E8DFD300EADF
        D200EEE0CF00E3E0D700E6E0D600E7E1D700E7E0D600E2E2DA00E7E2D900E7E3
        DB00E9E1D700EBE2D700EFE2D200EFE2D300EEE1D100EFE3D400E8E3DB00E9E4
        DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
        D700F1E6D900F4EBDF00E0E6E100E6E7E200EBE7E100ECE7E000EDE8E200EEE9
        E300ECE9E400EDE9E500EEEAE500EEEAE600EBEDE900EFECE900EFEFEC00F4EB
        E000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EEEB00F1EE
        EC00F2EFED00F2F1EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4EE00FAF5
        EF00F4F2F000F5F3F100F5F4F300F7F5F400F7F6F500F7F7F600FAF5F000F9F7
        F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEEFD2BABAD2EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA5D222222222222
        22229CFAFFFFFFFFFFFFFFFFFFFFFFC6222222362738362222222222A7FEFFFF
        FFFFFFFFFFFD44223B3F454C474D462F39222222225BFDFFFFFFFFFFFF5D224A
        79797B7951504C4C412F2322222244FEFFFFFFFFAE227E7E858586837F7E7850
        4C413127222222BAFFFFFFFA22498E8B929292918B84807E774F473127222222
        F0FEFE9C228E95B1B3B2B3AF8D03036C7F794F413F3622229CFFFE228AB2B3B6
        BEBEBEB57100006B847C794C412E222222FAE622B1B5BDC0C9C9C9C26A00006D
        8B847B4F4C31382222E6D136B6C0C9CBD6C1BFBF710000646D6C6C794E412E22
        22C4BA42C0CAD6DADD050000000000000000037B52413F2222A7BA43CAD6DDE7
        E006000000000000000002817947402722A7D23ACBDAE7EAF2E0DED463000062
        65696C82794C403622D1EF22D6DDE9F3F7FBF4F476000067B8B08D847A4F412A
        22E2FC22C8DDE9F4FBFEFBF475000071BEB291867B4F402222FDFE975BDDE8F2
        F7FBF7F2D40502BBBDB292867B4F40225DFFFEF122CBE7EAF2F4F2EBE0DACBC8
        B6B19183794F3622FAFFFFFDAE36D9E7E8E9E9DFDBD6CABDB3968B81794B229C
        FDFFFFFFFF5D3CDADDDDDDDBD6CAC0B5B08D847B462259FDFFFFFFFFFFFD5B36
        C9D6D6CBCAC0B6B3968E7F4F223CFDFFFFFFFFFFFFFFFEAE224ABDC1BDB6B096
        8C792222AEFEFFFFFFFFFFFFFFFFFEFDF89C2222373D3B2222225DF1FEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFDE6D1BAAED2E6FAFDFEFEFEFFFFFFFF}
      DisabledImage.Data = {
        72040000424D7204000000000000320200002800000018000000180000000100
        08000000000040020000610F0000610F00007F00000000000000AEAEAF00B3B3
        B400B4B4B500B5B5B600B8B8B900B9B9B900BABABA00BABABB00BBBBBB00BBBB
        BC00BCBCBD00BDBDBE00BFBFC000C0C0C100C4C4C400C5C5C600C6C6C600C7C7
        C700C8C8C800C9C9CA00CCCDCD00CECECE00CECECF00CFCFCF00CFCFD000CFD0
        D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1D200D1D2D200D2D2D200D2D2
        D300D2D3D300D3D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6
        D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9
        D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDB
        DC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDF
        DF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2
        E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5
        E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9
        E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECEC
        EC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
        F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5
        F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FA
        FA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007E7E7E7E7E7E7E7E7D77
        6E68686E777D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7B62483A312D2B2E3748627B
        7E7E7E7E7E7E7E7E7E7E7E694334282424211B1816162941697E7E7E7E7E7E7E
        7E7D5B3C302D2D2D2B2825211B181416345B7D7E7E7E7E7E7E5B3A3536363635
        33302D2B25211916142E5B7E7E7E7E7E683F3A3D4040403D3B3835302D281F19
        161434687E7E7E7B434144474949494744423D38332D281F191414417B7E7E62
        43484D50505050504403033538332D281F181429627E7D484D4F565658585856
        4700002F4038332D25191614487D76435255585C5E5E5E5C3B00003D4740382E
        291F181437766E49585A6163655E5C5A4400002C473D36352D2519162E6D694C
        5A6165686A01000000000000000003382E261F182968694D6165696C6E030000
        0000000000000038332B221829686D4D63686C727366584C1400001A23272D3B
        352D22192E6D7648646A6E73777A77725300003858504940352D251937767D48
        626A70757A7E7A754C00004958504940342D251F487D7E62556A6E73777A7773
        5A00004D58504940342D252D627E7E7B46666C72737573726B65615A5650473D
        322D25417B7E7E7E684D686C6E706E6C69656158564D443B31293A687E7E7E7E
        7E5B52686A6A6A6765615A565049423830375B7E7E7E7E7E7E7C5B4B63656563
        615A58534D443D383B5B7C7E7E7E7E7E7E7E7E6844535E5C5856534D47403D42
        677E7E7E7E7E7E7E7E7E7E7E7B604947494949444047617B7D7E7E7E7E7E7E7E
        7E7E7E7D7D7D7D776E67676E777D7E7E7D7E7E7E7E7E}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F0000000100000000000036C58B0037C6
        8C0048C7910048C8930049CA95005ACB9B0059CA99005BCC9C005CCE9F005DCF
        A00063CA9A0064CB9C0066CEA10067D0A50068D1A6007DCEA6007ED1AB00B5BF
        C6008ECEA90082D7B30093D6B60095D9BB0097DBBE00A3D2B400A5D7BB00A4D5
        B900A5D8BE00A9D1B400ABD5BA00ACD8BF00BDD1B700BCD2B800BED6BE00A7C1
        D900A7C3DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6
        DB00AEC4D800AEDAC300B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2
        C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7
        DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7
        E400AAC9E600AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CC
        F100A9CDF100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CE
        E600B6CEE500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2
        EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5
        F100BBD7F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600ABE0C800ADE1
        CA00B3E2CD00B6E5D000C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D2B900C3D1
        B800C3D4BC00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCF
        B800DECFBA00D1D2BB00D1D3BD00DFD1BE00E0CFB900E0CFB800E0CFBA00E0D0
        BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D2BD00C0C2C000C3C4
        C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
        D100C0CCD500C1CFDA00C2DCC800C4DFCE00CADFCF00C8D0D600CCD1D300CCD4
        D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3CDC200D7CFC000D3D6C200D7D0
        C300D5D0C700D6D4CD00DFD5C300DFD6C600D8D3C900DAD5CC00DBD8C800D7DF
        D200DCDAD300DEDED200C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
        E000D2DCE400D4DEE900C9E6D700CDE3D600CDEADD00D0E7DB00DFE1D500DAE3
        D800CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DEE9E100DAE9F900DAEA
        FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D7
        C700E2D7C600E1D6C500E1D7C800E3D9CB00E2DACB00E3DACC00E3DBCF00E2DC
        CF00E4DACC00E4DCCF00E2DFD400E5DDD100E5DCD000E5DED300E5DFD400E6E0
        D600E7E1D700E6E0D500E7E2D900E6E3DA00E8E2DA00E9E4DC00E9E4DD00E9E5
        DF00E1E2E200E0E4E700E2E6EA00E5E7E900E3EEE700EBE7E100ECE9E400EDE9
        E500ECEAE600EFECE900EFEDEB00E2EFFC00EBF0EB00E4F0FC00F1EEEB00F1EE
        EC00F2EFED00F1F2EF00F3F5F200F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
        FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDC1674C4C65C1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEC13F3F0D21212122
        083F49F8FFFFFFFFFFFFFFFFFFFFFF4C0E3E242F6D6D6D888811240D49FAFEFE
        FFFFFFFFFFED3F223C8B6D778080777776766D24223FFAFEFFFFFFFFFE3F2125
        80C7C786867D80808076766D6D213FEFFFFFFFF949218BA2C7CCC9C9C9C7C786
        80777676742F0D49FFFFFFEF0D3EA7CDD6CDCDCDCDCDC7C7C780777676746D22
        BDFEF9493E9DD6D6D6D6D6D6A70206A6C7C7808076766D2149FEFA2222D6D6D9
        DED7DED6A700009ECCC7C780807674300DEF60229DD6DEDEDEDEE0DE900000A2
        CDCDC7808076763022BE4C229BDEDEE1E9E2E2AA96000020A3A2C7C780807673
        21494922E2E0E7E9E902000000000000000006C78080766D24494922B2E7E9EB
        F104000000000000000000C7C7807776243E4C3FE0E9F1F2F6E5E3B71600001D
        20209EC9C780766D2160BD22B0E9F1F5FBFCF7F5B9000094D7D7D0C9C7808074
        2160EF0DB0E9F1F6FCFEFCF4B4000099D9D6CDC9C77D802E0DF8FB3E3EE4F1F6
        FBFCFBF5BF0103A9DAD7D2C9C78080213EEFFE6722B3EBF2F5F6F5F2EBEAE1DE
        D7D6CDC9867D1122C2FCFEF8493FB3EBF1F1F1ECE9E7E0DAD7D6CDC7C775213F
        EDFEFEFDC13F22E9EBE9E9E9E7E0DCD9D7D2C9C78A213FEDF9FEFEFEF8C43F22
        5BE7E7E1E0DCD9D5D6CDC99E213F67FCFEFEFEFEFEFDC03F0D22B2DEDAD7D5D6
        D233212249C0F8FEFEFEFFFEFEFEFAEFC2493F0D3E22222122083F4CF9FEFEFE
        FEFEFEFEFEFEFEFEFCFBC4604949494960C0C2F9FEFEFEFEFEFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F0000000100000000000034C58B0037C6
        8C0038C78D003DC8900044C8920048C9950049CA96004CCB970053CD9C0055CB
        990054CE9D005BCB9B0058CC9C0059CE9E0061CD9F0061CEA10066CEA20068CD
        A10068CEA30067D0A40067D1A60068D2A70072D0A70073D2AA0074D3AC007FD3
        AE0085CFA90086D0AC008ED1AE0080D6B2008ED2B10097D5B70092DCBE0098D6
        B7009FD4B7009ED7BB0098D8BB00A0D5B900A0D9BD00A0DABF00A8D8BF00B6D7
        BF00B5D5BD00BFD5BD00A2DCC300AADAC100A9DCC500ACDDC600B2D9C100B4DC
        C700BFD7C100BFDAC600BBE1CE00B8E3D000B9E4D200BEE3D200DBBFA300DDBF
        A300DDBFA400C3D5BF00DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3
        A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4
        AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8
        AF00DDC7B000DEC9B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCE
        B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8
        B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
        B700E2CBB800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CE
        BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
        B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
        BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D2
        BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00C3D8C400C1DFCD00C5DCCA00CFD6
        C300CBDAC700CFD8C600CEDAC800CDDECE00CBDFD000D3D8C600D1DDCF00D0DE
        CD00D7DBCB00D5DBCC00DADACA00DBDDCF00DED9CA00DEDBCD00DCDDD000CDE2
        D400D9E0D300DEE0D500DEE2D800E1D1C000E1D3C000E3D1C100E2D2C100E2D3
        C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6
        C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7C600E5D7
        C500E3D7C800E6D6C900E4D7C700E0D9CA00E3D8C800E3D8C900E3D9CB00E3DA
        CB00E2DBCE00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DACC00E5DA
        CD00E4DBCE00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4C400E9D5C400E9D6
        C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E0DE
        D200E5DCD000E5DDD100E7DDD000E6DED300E6DED400E5E0D600E7E0D700E3E4
        DB00E1E6DE00EFE1D500E8E1D900E9E2DA00EBE5DD00F0E2D600F0E2D700F0E3
        D700F0E1D600F0E3D800F3E8DF00E1E7E000EBE6E000EEEAE600EFECE900F3E9
        E000F4EAE200F5EBE300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF2D77D7DD7F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383838383838
        38385DFAFFFFFFFFFFFFFFFFFFFFFF8B3838383838383838383838383AFFFFFF
        FFFFFFFEFEFA383838384157ABC0C8BC813D38383839FCFFFFFFFFFEFE393838
        A5AEC0DBDFE4E6EEEEE6A638383838FCFEFFFFFE5E385AA5B2C0DADEE5EEA114
        17EFEFE03D38387BFEFFFFFA3838B2AEAEC0DBE0E6EFA10000F0F0EFDC393838
        EBFFFE3938A8AEA8B2C2DEE4EEEF350000FAF5EFEEB938383AFFFD384BC284AB
        B2C8DEE5EEF0370000F5F5F5EEE0473838F8D738BDBA73ABB2C2DE0200000000
        0000000016E4893838EBCF38BBA885A6B2C0DA0000000000000000000CE0B13C
        38777738DE848087B0BFDA3332311800002F2F3190DDC13838657C38E4885984
        ABB2C8DBDFE4310000A4EEE5E0DAB851385DD138E6AD596E87AEBAC8DBDB2A00
        00A4DFDDDBC1AD3838D3EC38DECB546B81AAB0BEC1C2290000DCDBC2C8BE8751
        38D7F638DAEE53676B84AAB0B5C1BFBFBFC1C1C1B4AE673838FBFA393AF0C351
        676B8387AAAFB3B3BEB5B0AFAA87593838FAFEEC38E5F08251676B6E8387A6AA
        AAAAAA8787593838F6FCFEFA6238E8EF6B5167676B80808383818081A65B3839
        FAFFFEFEFC3838EEEFB9535153676759595987AB4C3838FAFDFFFFFEFDFA3938
        C6EEE6C3896B6B83ADBEB0803838F3FDFEFFFEFEFEFEFC39383DDBE5E0DFDDDA
        C053383862F9FCFEFEFFFFFEFEFEFEFAF35D383838383838383838EAFDFEFEFE
        FFFFFFFEFEFEFEFEFEFEF9D76560638CD7ECF7FCFEFEFEFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.atnAddSingleItem
      DockOrientation = doNoOrient
    end
    object ElSpeedButton2: TElSpeedButton
      Left = 90
      Top = 1
      Width = 29
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A58FBF00A691
        C000A792C200AB97C300AD99C500AE9AC600B19FC200B3A1C400B4A1C200B5A3
        C500B6A5C700B4A3C800B7A6CA00B8A8C800B9A9CA00B9A9CD00C1B1C500C3B4
        C700C4B4C500C0B2CA00C5B7CB00C8B8C400CEBFC300C9BBC800C9BDCE00C4B6
        D100C7BAD000CABDD100CABED400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D5C6
        BF00DFCAB000DFCBB000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCC
        B400DFCDB600DFCEB700DACBBE00DFCEB800DFCFB800DECEBA00DCCDBD00E0C9
        AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CEB500E4CEB300E4CFB500E4CF
        B600E0CFB900E0CFB800E0CFBA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0
        BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2
        BD00E0D2BE00E0D2BF00E3D3BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2
        BB00E6D3BB00E5D3BD00E7D4BE00E7D4BC00E8D4BD00CFC1C600CEC0C800CEC3
        CD00CDC2D700CEC2DB00D0C1C000D0C1C400D3C6C700D2C5C700D6C7C200D1C5
        CB00D0C5CF00D9CBC000DACDC300DBCEC400DDCFC000D8CDCB00D8CCC900D9CF
        CD00D9CECE00D0C5D100D0C5DB00D5CBD000D4CADA00DFD2C300DCD0C600DED2
        C600DCD0C900DFD5CB00D9D0D200DAD1D100DED6D200DED7DB00D9D0E000DCD4
        E500E0D3C000E1D3BF00E1D4C100E0D4C100E1D4C200E1D5C300E3D4C100E2D6
        C400E3D7C500E2D7C600E2D7C700E3D7C700E0D5C600E4D6C200E6D5C100E3D7
        C600E1D6C900E2D7C800E7D8C600E3D9CA00E3DACB00E2D8CC00E3DACC00E3DA
        CE00E5DACB00E5DBCC00E4DBCE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7
        C100E8D7C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADB
        CA00EBDCCB00EADCC900EADDCD00EADDCD00EDDDCA00ECDDCA00EDDFCD00EDDE
        CD00EDDFCE00ECDFCF00EEDFCE00ECDDCC00E1D9D200E3DBD000E1D8D000E2DB
        D400E0D8D400E5DCD000E5DDD100E5DED300E7DED200E6DFD500E4DDD500E2DB
        D800E0D9D800E3DDDD00E9DED100E9DFD300E1DAE100EEE0CF00E7E1D700E6E0
        D600E7E2D900E7E2DB00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
        DA00E9E4DC00E9E4DD00EAE5DF00E9E4DE00ECE4DB00F0E3D400F0E4D400F0E4
        D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E0E200E8E3E600EBE7E100EBE7
        E500ECE7E000EBE7EB00EAE5EE00EEE9E300ECE9E400EDE9E500EEEAE500ECE8
        E900EFECE900EFECF000F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EF
        E700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2
        EB00F9F4EE00FAF5EF00F3F1F000F4F2F000F5F3F100F4F2F300F5F4F300F6F4
        F500FAF5F000FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF1D4BFBFD4F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB561E1E1E1E1E1E
        1E1E9DFBFFFFFFFFFFFFFFFFFFFFFFC71E1E1E312233311E1E1E1E1EA6FEFFFF
        FFFFFFFFFFFD3F1E363B40474248412A351E1E1E1E55FDFFFFFFFFFFFF561E45
        7C7C7E7C7A4B47473C2A1F1E1E1E3FFEFFFFFFFFAC1E808189898583817E7C4B
        473C2D221E1E1EBFFFFFFFFB1E448D909090948E8D85837E7C49422D221E1E1E
        F2FEFE9D318DB3B3B4B5B4B3B3908D857F7C4A3C3B311E1E9DFFFE1E8CB4B5B7
        B76AB2B7B56A738F85155C473C291E1E1EFBE91E96B7C0C9CA6202BAC0590173
        8D12154A472D331E1EE9D331B7C2CBCCD86B0000B96200007212164A4A3C291E
        1EC5BF3DC2CDD8DEE21C0000021300000010157D4B3C3B1E1EA6BF3ECBD8DFEB
        EB6C000000190000000916817B472D221EA6D435CCDEEBEDF85B0000BE1C0000
        6D1216817C4A3A311ED3F11ED8DFECF6F97900DCE35A0077B51158837D494125
        1EE5FC1ECAE0EDF7FCE3E3F7ED77BBC3B5595F847D4A3A1E1EFDFE9851E2EBF7
        F9FDF9F8ECE1D8CAB7B490857E4A3A1E56FFFEF31ECCEBEDF7F7F7EDE2DECCC2
        B7B390837C4A311EFBFFFFFDAC31DDEBEAECECEBDFD8CBC2B5968D817A471E9D
        FDFFFFFFFF5637DEE0DFE2DED8CDC2B5B590857E421E52FDFFFFFFFFFFFD5531
        CAD8D8CCCBC2C1B5968D83471E37FDFEFFFFFFFFFFFFFEAC1E45C0C2C0C1B596
        904C1E1EACFEFEFEFFFFFFFFFFFFFEFDFA9D1E1E323636321E1E56F3FEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFDE9D3BFBFD4E9FBFDFEFEFEFFFFFFFF}
      DisabledImage.Data = {
        8A040000424D8A040000000000004A0200002800000018000000180000000100
        08000000000040020000610F0000610F00008500000000000000B1B1B200B2B2
        B300B3B3B300B6B6B700B6B7B700B8B8B900B9B9BA00BBBBBB00BDBDBD00BDBD
        BE00BEBEBF00BFBFC000C0C0C000C0C0C100C1C1C100C1C1C200C2C2C200C3C3
        C300C6C6C600C7C7C700C8C8C900C9C9CA00CBCBCB00CBCBCC00CCCCCD00CDCD
        CE00CDCECE00CECECE00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1
        D100D1D1D100D1D1D200D1D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4
        D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7
        D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DA
        DA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDC
        DD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0
        E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3
        E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
        E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
        EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECECED00ECEDED00EDED
        ED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1
        F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
        F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
        FC00FDFDFD00FEFEFE00FFFFFF008484848484848484837D746E6E747D838484
        84848484848484848484848481684D3F363230333C4D68818484848484848484
        8484846F48392D282825201D1B1C2E466E848484848484848483604135323232
        302D2A251E1D1A1A396083848484848484603F3A3B3B3B3A383532302A241E1A
        1A336084848484846E443F4245454542403D3A33322B251E1A1A396E84848481
        4846494C4E4E4E4C4947423C36322B251E1A1A4681848468484D525555555555
        524E49453C36322D241D182E6884834D52545B5B5D404E5B5B3A454C45161932
        2A1E1A1A4D837C48575A5D61632A03535D2902454B1315332E241D193C7C744E
        5D5F66696B300000582C00004313173A322A1E1A33736F515F666B6E70230000
        031600000112193D332B241D2E6E6F52666B6F727435000000160000000B1A40
        3830261D2E6E7352696E7278792C0000511C000037141C423A32261E33737C4D
        6A7074797D41005D723000425B161C453A322A1E3C7C834D6870767B80697179
        764D525F5D22274539322A244D8384685A7074797D807D79746F6B635D554E45
        39322A32688484814B6C7178797B7978716D69615B554C4237322A4681848484
        6E526D71747674716F6B665D5B524940362E3F6E848484848460576D6F6F6F6D
        6B665F5B554E473D353C60848484848484826050696B6B69665F5D585249423D
        40608284848484848484846E495863615D5B58524C4542476D84848484848484
        8484848481654E4C4E4E4E49454C66818384848484848484848484838383837D
        746D6D747D838484838484848484}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AD80BD00AE82
        C000B289C200B48BC300B58CC500B892C100BA96C200BB97C600BB97C400BC99
        C600BE9CC800BF9ECA00BE9CCC00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0
        D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2
        CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5
        D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CB
        DB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACA
        E900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9
        E000B4CEE600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0
        EA00B4D0ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1
        F000B7D5F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDA
        F600C5A8C400C7ACC600C5A9C900C8ADC400C9AFCA00C8ADCF00CBB2C300CCB4
        C700CAB2CF00CDB6CD00CEB6D200D1BAC200D1BBC600D2BCC200D2BDC500D2BE
        CD00D0B8D600D1BCD600D2BBDB00D3BDDA00C3C3BE00C7C3BB00C8C5BD00C8C6
        BF00D7C4BE00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DBCA
        BE00DFCFB800DECFBA00DCCCBD00DFD1BE00E0CFB900E0CFBA00E0D0BB00E0D1
        BC00E0D1BD00E0D2BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CA
        CD00C8C6C100C8C8C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1
        D300CAD2D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D5C2C700D7C5C200D4C1
        CB00D3CDC200D7CFC000D8C7CF00DBCBC100DBCCC300DDCEC000DCCEC500DACA
        CA00DACCCD00DDCEC900D3C0D000D7C5D900DBCDD100DBCBDF00D7D0C300D5D0
        C700D6D4CD00DFD2C300DFD1C600D8D3C900DAD5CC00DFD4D100DFD4DA00DCDA
        D300C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00DFCFE400D0D9E000D2DC
        E400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9F900DAEA
        FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D6
        C500E2D7C700E1D5C600E1D7C900E1D6CA00E2D7CC00E3D9CA00E3DACC00E3DB
        CF00E4DACD00E1D7D000E1D7D600E3DAD000E3DAD400E4DCD000E5DCD000E5DE
        D300E5DED500E2D9D800E4DBDD00E3D7E100E6DEE100E7E1D700E6DFD500E7E2
        D900E8E2DA00E9E4DC00EAE5DF00E8E4DF00E1E2E200E0E4E700E2E6EA00E5E7
        E900E9E1E600EBE7E100EBE7E500EBE2ED00ECE3EF00ECE5EB00EDE7E900ECE9
        E400EDE9E500ECEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBEF00F1EE
        EB00F1EEEC00F2EFED00F3F1F000F4F2F000F5F3F100F5F3F300F4F0F300F6F4
        F500F2F8FD00F3F8FD00F6FAFE00FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDB95138384FB9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB92B0F0E0E110E0E
        0E2B35FAFFFFFFFFFFFFFFFFFFFFFD382B0E110D1C67670D0D0D110E35FAFDFF
        FFFFFFFFFDEE2B0E0D0D1C6B6C6E6E6E6C6C67010E2BFCFFFFFFFFFFFD2B0E11
        6D73757B7C73706E6E6E6C671C0E2BEFFFFFFFFA350E1F92C0C2C2C2C0C0BE7C
        726E6E6E6B0D0E35FFFFFFEF2B11A5C8C8C8C8C8C7C2C1C0BE7C726E6E671C0E
        B5FDFA2B0E85C9CFD1D1D1CFCFC8C7C2C0BE726E6E6E670E35FDFC2B0EA9D1D2
        D89AA7D8D89AA6C8C25D67726E6E6B1C0EB9380F89D1D9D9DB9C01D3D76100C5
        C7525D7C706E6C1C0EB5382B8AD9DBDCE39C0000D36100009B5558BE796E6E67
        1135350FA9DDE3E9EB6200000154000000525DBE7C6E6E671135352BDEDDEBED
        ED650000005A000000065DC0BE766E6E112B380FDEE9EDF3F7640000D55A0000
        94535DC1BE796E671138B62BADEBF1F6F9AF01E5F065009ED25659C2BE7C6F6C
        0E4FB60FB1EBF3F5FDE6F0F8EDD5A8DDD95E8FC2BE7C6C0D0FFAFA2B2BDFF2F4
        F9FDF9F7EDEBE3DAD2D1C8C2BE7C730E2BBCFC4F0FB2EDF3F6F7F6F3EDEBE3D9
        D8CFC8C2BE6D0D0FB9FAFDFA352BAEECF2F3F2EDEAE3DBD9D1CFC7C0BE6D0E2B
        EEFDFFFCB92B0FE4EBEBEBE9E3DDD9D1D1C9C2C07F0E2BEEFAFDFFFDFABC2B2B
        47E3E3DCDBD7D8D1CFC7C1A10E2B51FCFFFFFFFDFDFDB62B0F0FDED9D7D8D1D0
        C7270E0F35B9FAFFFFFFFFFDFDFDFABCB5352B0F0F0F0F0E0F0F2B35FAFCFDFD
        FFFFFFFFFFFFFDFDFDFAB6353535353538B5B5FAFDFDFFFFFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A979BC00A97A
        BD00AE81BE00AE83C000B187C100B38AC500B893C500B892C700B893C700B995
        C200BA96C100BC99C300BD9AC400BE9CC700BC98CA00BE9DC800BE9CCA00DBBF
        A300DDBFA300DDBFA400C1A1C300C1A1CC00C3A5C900C3A5CC00C5A7CC00C4A6
        CF00C5A8C800C8ACCE00C6A7D100CAAFD300C9ACD500CEB6C500CCB1D600CEB5
        D600D2BDC700D3BEC600D0BBCD00D3BEC900D3BFCA00D3BFCF00D0BAD000D1BC
        D300D3BFD100D3BFD600DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DDC3
        AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DDC5AB00DCC4AB00DEC4AA00DFC4
        AA00DDC5AD00DDC7AE00DDC7AF00DFC5AC00DEC6AD00DEC7AF00DEC8AF00DDC7
        B000DEC9B200DEC8B200DDC8B000DECAB400DFCBB500DFCDB700DFCEB700DFCC
        B800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8
        B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CB
        B800E0CFB800E1CFB900E0CEB800E0CFBB00E3CCB900E2CDBA00E3CDBB00E3CE
        BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
        B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E1D0
        BB00E1D1BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D1
        BC00E2D2BD00E2D2BF00E7D1BF00E7D2BF00E6D0BE00D7C5C400D5C2CB00D4C1
        CF00D5C3CD00D8C6CE00DCCDC300DCCEC600D9CACB00DBCCCD00DDCFCA00D4C0
        D200D8C6DA00D9C7DD00D9C8D100DACBD100DACBD500DACBD700DBCCD100DECF
        D200DBCADF00DCCDDB00DCCDDD00DED0CA00DFD2CF00DFD3D100DDCDE100E1D1
        C000E1D3C000E0D3C000E3D1C100E3D1C000E2D2C100E2D3C000E1D4C100E1D4
        C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6C500E2D6C600E2D7
        C600E2D7C700E3D7C600E3D7C700E1D4C600E5D3C300E4D5C200E4D7C600E5D7
        C500E0D2CB00E3D7C800E2D7CA00E1D6CF00E6D6C900E4D7C700E3D8C900E3D9
        CB00E3DACB00E3DACD00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DA
        CC00E5DACD00E4DBCE00E7DBCD00E5DCCF00E8D3C100E8D4C300E8D4C400E9D5
        C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
        CF00E0D4D000E0D4D500E3D8D500E6DCD000E6DED300E5DCD200E7DFD400E4DA
        DA00E5DDDB00E1D2E500E3D6E600E5DBE500E8E0D500EFE1D500E8E1D900E9E3
        DB00EAE4DD00EAE5DF00F0E2D600F0E2D700F0E3D700F0E1D600F0E3D800E9E1
        E400EAE4E600ECE6EA00ECE8E400EDE9E500EDE8EB00EEEBE800EEE8ED00F3E8
        E000F4EAE200F5EBE300F4EAE100F1EEED00F6EEE800F7EFE900F7EFEA00F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF2D06D6DD0F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF811111111111111
        11114CFAFFFFFFFFFFFFFFFFFFFFFF7C11111111111111111111111113FFFFFF
        FFFFFFFEFEFA111111113245A1B9C1B7732D11111112FCFFFFFFFFFEFE121111
        77ADB9D7D8E0E3E3E3E27B11111111FCFEFFFFFE4D114977A8B4D7D8E0E3EDEF
        EFEFEDDE2F11116BFEFFFFFA1111ADA1A8BAD7D6E3ECF5F5F5F5F5DAD8121111
        E8FFFD121199A5A1AABBD70DE3EFF519FAFAF508E3AF111113FFFD1137C374A1
        A8BBD60006EAF5020EFAF008ECDE361111F8D011B5B363A1AABBD700000EF501
        0008F008E3E0791111E8C711ADA35DA0A9BAD7000000150100001007E2DEAB11
        11546711D8767077A4B9BB000001DC000002DC06E0D8BA1111546B11E1745A74
        A0A9B90001D4E30102D9DA06D6D7B740114CCA11E2AF485D77A6A90496D8D606
        D3E0D805C5BAA02C11CCF111D4D1455A73A0A6A4BAC5D7D2D6D6D780BAAA9A40
        11D0F611D7F142565A739BA4A9BABAC3BBBBBAB8A9A4561111FAFA1211EFBC40
        565A73779BA4A9AAAAAAA9A4A077481111FAFEF111E1EF7240564873739BA0A1
        A1A09B7777481111F6FCFEFA5011E8ED7240565648707073737370739B4A1112
        FAFFFFFEFC1111ECEDB1424042564848485A76A13B1111FAFDFFFFFEFDFA1211
        C0E3E2BE725A5A73A3B8A6701111F3FDFEFFFEFEFEFDFC12112DD6E1E0D8D6C5
        BA44111151F9FCFEFEFFFFFEFEFEFEFAF339111111111111111111E7FDFEFEFE
        FFFFFFFEFEFEFEFEFEFEF9CF674D547CD0F1F8FCFEFEFEFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsLast1
      DockOrientation = doNoOrient
    end
    object ElSpeedButton9: TElSpeedButton
      Left = 60
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F000000010000000000009E87BD00A994
        C000AA96C300AC98C100AC99C200B2A0C700B5A3C700B3A1C900B7A6CC00BEAF
        C700BFAFC800C0B2CC00C2B4CF00C6B8C900C6B9CB00C4B6D300DFC9AC00DFC9
        AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200DFCCB300DFCC
        B400DFCDB400DFCDB500DFCDB600DFCEB700DFCEB800DFCFB800E0C9AD00E0CA
        AD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CEB300E4CFB400E4CFB600E0CF
        B800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0
        BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2
        BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2BD00E2D3BE00E3D3BF00E4D1
        B900E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3BB00E5D3BD00E7D4BC00E7D4
        BE00E8D4BD00D1C5CC00D5CACB00D5CACC00D1C6D400D3C8D100D7CED300D3C9
        D800D5CBDB00D7CEDE00D9CFD000DCD3CE00DDD4D000D9D1D800D9D1DF00DCD4
        DD00DDD5E300E0D3C000E0D3C100E1D3C000E0D4C100E1D4C100E1D4C200E1D5
        C300E3D4C100E2D5C300E1D5C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7
        C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7C600E0D5CB00E2D7C800E0D6
        CD00E0D7CE00E7D8C500E7D9C700E3D9C900E3D9CA00E3D9CB00E3DACB00E3DA
        CC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DACD00E5DBCC00E4DBCE00E6DB
        CC00E4DCCE00E4DCCF00E6DDCF00E8D6C000E9D7C100E8D7C200E9D8C300E9D9
        C400E8D9C500EBD9C400E8DAC800E8DAC900E9DAC800E8DBCA00EADBC900EADB
        CA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DDCF00EADDCD00EBDECD00ECDD
        CA00EDDDCA00ECDDCC00EDDECD00EDDFCD00ECDFCF00EDDFCE00EEDFCE00E2DA
        D300E4DCD100E5DCD000E5DDD100E5DED200E5DED300E7DED200E5DFD500E6DF
        D500E4DDD900E8DED100E9DED000E8DFD300EADFD200EEE0CF00E6E0D500E6E0
        D600E7E0D600E7E1D700E7E2D900E7E2DA00E6E1DF00E9E1D700EBE1D600EBE2
        D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2DA00E8E3DB00E9E3DC00E9E4
        DC00E9E4DD00EAE4DD00EAE5DE00EAE5DF00ECE4DB00F0E3D300F0E3D400F0E4
        D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E6E1E900E9E5E000E9E4
        E300EBE6E100EBE7E100ECE7E000EBE7E800EDE8E200EEE9E300ECE8E500ECE9
        E400EDE9E500EDEAE500EDEAE600EEEAE400EEEAE700EFEBED00EFECE900EFEC
        EA00F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
        EB00F1EEEC00F2EFED00F3F0EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4
        EE00FAF5EF00F4F2F000F5F3F100F7F5F400F7F6F500FAF5F000F8F6F600F9F7
        F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF0CDAFAFCDF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8B101010101010
        10108BFAFFFFFFFFFFFFFFFFFFFFFFBB1010171A1B1A161511101010A0FEFFFF
        FFFFFFFFFFFD4A1029303232312B2925171310101046FDFFFFFFFFFFFF4A103D
        3D5F605F5D3C3A3730291721101048FEFFFFFFFFBB1063656A6B6B6866615F3C
        3A312918131010A0FEFFFFFA10626B7D7E7E7E7D7A6B66615D3A312918121010
        F7FFFF8B227884A4A5A5A583A37E7A6B645F3A31291710108BFEFE1074A4A9A9
        B2B2B2A109A5A37D6B645D3A3025151010FDEE10A4B0B3BEC1C1C1AA0009A6A3
        7D6B613C3729182110E7CD22B0B4C2C5D3D3D3B6000009A6A37A665F3A302515
        10CBBA2CB4C4D3DADEDEDED100000009A47E6B613C31291710A0BA34C2D3DCE8
        EAEBEAD500000009A6A37A665D37291810A0CD24C5DAE8ECF4F4F4DF000008B5
        A9A47D685F3A2A1810CBF010D3DEEAF4F8FBF8DF000BD1BFB2A57E6B603A2A1A
        10E7FE10C1DCEBF4FBFFFBEB0CDCD2C1B2A57E6B603A2A1710FDFF8B47DEEAF4
        F8FBF8F3EADED3C1B2A57E6B603A2A108BFEFFFA10C4E8ECF4F4F4ECE8DAC5BE
        A9A47D685F3A2510F7FEFFFEAF20DDE8EAEBEAE8DCD3C2B3A9A37A665D3610A0
        FEFEFFFFFE4A27D9DEDEDEDAD3C4B4B0A57E6B613C1048FDFEFFFFFFFFFD4A20
        C1D3D3C5C2B4B2A6A37A663A1048FAFEFFFFFFFFFFFFFFBB1043B2BEB3B0A6A3
        7D632210A0FDFFFFFFFFFFFFFFFFFFFFFA8B10102325252110108BF7FEFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEEECDAFAFCDEEFDFEFEFFFFFFFFFFFF}
      DisabledImage.Data = {
        3A040000424D3A04000000000000FA0100002800000018000000180000000100
        08000000000040020000610F0000610F00007100000000000000ABABAC00ACAC
        AC00B4B4B500B5B5B600B7B7B800BDBDBD00BDBDBE00BFBFBF00C1C1C200C6C6
        C700C7C7C700C7C8C800C9C9CA00CBCCCC00CCCCCD00CFCFD000CFD0D000D0D0
        D100D0D1D100D1D1D200D1D2D200D2D2D300D2D3D300D3D3D400D4D4D500D4D5
        D500D5D5D500D5D5D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
        D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
        DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
        DE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1
        E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5
        E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8
        E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEB
        EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
        EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
        F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
        F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
        7070707070706F69605A5A60696F70707070707070707070707070706D543A2C
        231F1D20293A546D70707070707070707070705B35261B171715110F0F0F1C33
        5B70707070707070706F4D2E221F1F1F1D1B1815110F0E0F264D6F7070707070
        704D2E272828282725221F1D1815110F0E204D70707070705B322D2F3232322F
        2D2A27221F1B15110F0E265B7070706D353436393B3B3B3936342F2A251F1B15
        110E0E336D707054353B3F424242423F3F3B36322A251F1B150F0E1C54706F3A
        3F4248484A4A4A3F09423F39322A251F18110F0E3A6F693645484A4E50505048
        0009453F39322A221D150F0E2969603B4A4C53555757574E00000A453F362F27
        1F18110F20605B3E4C53575A5C5C5C5200000009423B342A221B150F1C5B5B3F
        53575B5E6062605700000008483F362D251D170F1C5B603F555A5E646567655D
        0000084C4842392F271F17112060693A575C6065696C695E000953504A423B32
        281F181129696F3B555C62676C706C600B5A57504A423B32281F18143A6F7054
        485C6065696C69645E5C57504A423B32281F181F5470706D38585E6465676564
        5E5A554E4842392F271F18336D7070705B3F5B5E6062605E5B57534A483F362D
        251D2C5B70707070704D445A5C5C5C5A57534C48423B342A222B4D7070707070
        706F4D3F55575755534C4A453F362F2A2E4D6F70707070707070705B3845504E
        4A48453F39322F355B70707070707070707070706D543D3A3D3D3B36333A546D
        70707070707070707070707070706F69605A5A60696F7070707070707070}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A776BB00B085
        BE00B187C100B38BC100B893C600BA96C600BD9ACA00B5BFC600A7C1D900A7C3
        DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6
        DB00AFC7DD00B5C0C700B7C0C500B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0
        C000BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6
        D800B0C7DC00B0C8DE00B8C6D000B9C7D200B9C9D700B9CBDB00A7C9EC00A6CA
        EC00A8C5E200A9C6E100A9C7E400AAC8E500AAC9E700AFCAE300AFCBE600AFCA
        E500AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1
        F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CEE900B1CE
        EC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00B5D1EE00BCD1E400B9D3
        ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
        F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C3A5C600C5A8CB00C6AA
        CE00C9ADD200CAB1C900C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D7CA
        B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCEB800DECFBA00DFD1
        BE00E0CFB900DFCFB800E0CFBA00E0D0BA00E0D0BB00E0D1BC00E0D1BD00E0D2
        BE00E0D2BF00E0D3BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CA
        CE00C1C9CC00C8C6C100C8C8C300C9CAC600CACDCD00C3CBD100C0CCD500C1CF
        DA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3C0
        CB00D7C6CC00D3CDC200D7CFC000D5C3D100D5C2D600D8C5DB00D9CAD200DBCC
        D000DAC8DE00DBCDD800DCCCDE00D7D0C300D5D0C700D6D4CD00D8D3C900DAD5
        CC00DDD1CE00DED2D000DED0DC00DCDAD300C3D3E000C5D6E600C1D5E900CCD8
        E300CBDAE900CCDBEA00D0D9E000D2DCE400D4DEE900DFD0E200CEE2F600CEE3
        F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
        FB00E0D3C000E0D4C100E1D4C100E1D4C200E1D5C300E0D4C200E1D5C400E2D6
        C400E2D7C600E2D7C700E2D6C500E2D7C800E1D6CA00E0D5CD00E1D6CE00E3D9
        CA00E3D9CB00E3DACB00E3D9C900E3DACC00E3DBCF00E4DACD00E4DCCF00E2D9
        D300E5DCD000E5DDD100E4DCD100E5DED300E6DFD500E4DDD900E7DDE800E6E0
        D600E7E1D700E6E0D500E7E2D900E7E1DA00E7E0DF00E8E3DB00E9E3DC00E9E4
        DC00E9E4DD00EAE5DF00E1E2E200E0E4E700E2E6EA00E5E7E900E9E3E300EBE7
        E100EBE6E100E9E5E000ECE6E800ECE9E400EDE9E500EDEAE600EDEAE700EFEA
        ED00EFECE900EFEDEB00E2EFFC00E4F0FC00F1EEEB00F0EEEB00F1EEEC00F2EF
        ED00F3F0EF00F4F2F000F5F3F100F7F5F400F7F6F500F2F8FD00F3F8FD00F6FA
        FE00F9F7F700F8F6F600FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDAE56393956AEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736290808080B08
        080929ECFDFFFFFFFFFFFFFFFFFFFF390908075C5D5D605D5D190B0936F9FFFF
        FFFFFFFFFFF9290813765F5F636161605D5D5D190829F7FDFFFFFFFFFF290878
        7D8BB7B3B273716F6664605D5D0829F7FDFFFFFD3608797E98BBBBBABCB6B473
        746A6462605D0836F7FDFFED09257E99C7C7C7C5C1BDBAB6B4716D6562601908
        B1F9FD3609839DCBCDCDCDC8CAC7C1BBB8B4746A6462600B29F7F9292684CDD3
        D2D1D1C957CDCAC5BDB8B4746A64605D09EDAB09849DD4D7D9D9D9CF0057CDCA
        C5BBB6736F65626008564E0988CFDADBE1E1E1D6000057CDCAC1BAB4716A6160
        08393609DCDCE1E6E8E8E8E000000057CBC7BDB6736E65620B36370ADCE3E7EF
        F0F1F0E400000006CDCAC1BCB47067620B365429DCDFEAF2F4F4F4E9000057D5
        CECBC5BAB4716761084EAE09DDDFEFF4FBFCFBE90058E0D7D1CDC7BBB5716861
        08AAF9099FDEF1F4FCFFFCF159E4E0D8D1CDC7BBB571685E09EDF73629DDEBF4
        FBFCFBF3F0E8E1D9D1CDC7BBB571630B29F7F9EC09A3DFF2F4F4F4F2EBE6DBD7
        CECBC5BAB4695F09ABF7F9F73629DDE8F0F1F0EBE7E1DAD2CECAC1BCB4630836
        EDF9FDF9F72929DDDFE8E8E6E1DAD4D3CDC7BDB6690829EDF7FDFFFDF7ED2909
        A2E0E1DBDAD4D1CDCAC1BA8B0829AEF7F9FDFFFDF9F7F7360929A4D4D2D3CDCA
        C597080936B1F7F9FDFFFFFFFDFDF7EDB136290909090908090929AAEDF7F9FD
        FFFFFFFFFFFDFDF9F7EDEC563636363656ECEDEDF9FDFDFDFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AB7EBE00AC7F
        C000AE83BF00B187C200B790C800B892C300BE9CCC00DBBFA300DDBFA300DDBF
        A400C2A3C800C2A2CE00C3A5CA00C3A6CB00C5A7C800C5A8CB00C9AECF00C9AF
        D000CBB1CA00CDB5C900D3BBDC00D4BDDC00DCC0A400DDC0A500DCC1A500DCC1
        A700DCC2A600DCC3A800DCC3A900DDC2A800DDC3AA00DEC3A900DEC3AA00DEC3
        AB00DDC4A900DCC4AB00DDC5AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7
        AF00DFC5AC00DEC4AD00DEC6AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8
        B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCEB700DFCCB800DFCE
        B900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8
        B200E2C9B300E1CBB700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CF
        B700E2CBB800E1CCB900E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E3CC
        B900E2CDBA00E3CDBB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CB
        B800E5CDB800E5CDB900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CF
        BE00E0D0B900E0D0BA00E1D0BA00E0D1BB00E0D1BC00E0D1BD00E0D0BC00E1D1
        BE00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3
        BF00E5D0BF00E6D0BD00E6D1BE00E7D1BE00E7D2BF00D9C9CA00D9C9CF00DBCC
        CC00DCCDCD00D4C0D600D6C3DB00D9C9D200DBCBD200DBCDD700DCCDD500DCCF
        D700DDCFD800DED0C900DFD1E100E1D1C000E1D3C000E3D1C100E3D1C000E2D2
        C100E2D3C000E2D3C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E1D4
        C600E2D5C400E2D6C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3
        C300E4D5C200E5D7C500E4D7C700E4D7C600E1D6C900E3D7C800E2D7CB00E6D6
        C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DACB00E5D8C900E5D9CB00E6D8
        CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCE00E4DBCF00E7DBCD00E5DC
        CF00E6DCCE00E8D3C100E8D2C000E8D4C300E8D4C400E9D5C400E9D6C700EAD6
        C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E2D7D100E0D5
        D900E0D4DE00E5DCD000E5DDD100E7DDD000E6DDD300E6DED300E7DED300E6DE
        D400E7DFD500E3D9DE00E4DBD800E4DBDA00E6DFDD00E7DEE400E8DDE900E9DF
        EA00E7E0D700E7E0D900E8E0D500EFE1D500E8E1D900E8E1D800E8E2DA00E9E3
        DA00EAE4DD00EBE5DD00EAE5DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3
        D800F3E8DF00EBE6E000EBE6E300ECE7E300EBE1ED00EDE9E500EEEAE700EEE9
        E800EEEBE800EFEAEB00EFECE900F3E9E000F4EAE100F4EAE200F5EBE300F0EC
        EC00F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F1F300F6F4
        F300FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDEFBE6060BEEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D070707070707
        070709F7FFFFFFFFFFFFFFFFFFFFFF750707071B232422181607070759FDFFFF
        FFFFFFFFFFFC0807192933398B9FA99B4D3A18080708FAFEFFFFFFFFFF080733
        3569A4C4CAD8DCE3E3DB9A22160708FCFFFFFFFF750739558FA5C3CAD8E3E7EA
        ECEAE7C83C1A075AFDFFFFF90733858996A6C4D2DCCBF1F6F6F6F1E7C83A0807
        F4FCFD2607996D8D97ACC9D8E3067CF9FCF9F6EAE39B1A0709FCFD07569C668D
        97ACC9D8E306007CFFFCF6ECE3D4320807FBE2079F8B668D97ACC9D8E3060000
        7CF9F6EAE3D8712607DEBA07A869658C96A6C4D2DC0600000084F1E7DCD29B24
        07B45B07CA64636E93A5C3CAD605000006E9E7E3D8CAA22D07416007D86F4C67
        8D97ABC4CA050006CEDCDAD8CAC49D320745BE07DC9A474F6E93A3ACC4050ACC
        D3D6D2CAC4AC8E3207B9EF07DAB0464C668C93A3AB77C3C6C6C9C4C3ABA36A32
        07DEFC07B0DA46464C678C9397A5A5ACACACA6A597934C2607FAFC1709E7A932
        464C666E8D939697979796938D6E480708FBFEF707D4E76F32464C4F676E8C8D
        8D8D8C6E6E672F07F0FBFEFD5B07DBE5543246474C636566666665666E390740
        FAFDFFFDFC0807E3E79B323246464748484C6E90660707FAFCFEFFFFFDFA0807
        C8E3D9A7704D4D668FA295390707F7FCFDFFFFFFFFFDFC5E0707B0D8D7CAC7C3
        AB6C070740FAFCFDFFFFFFFFFFFFFDFCF526070707070707070708EFFAFCFEFF
        FFFFFFFFFFFFFFFDFCFCFADDB35959B3DDF9FAFAFDFEFFFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsNext1
      DockOrientation = doNoOrient
    end
    object ElSpeedButton8: TElSpeedButton
      Left = 31
      Top = 1
      Width = 29
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A28CBE00A28C
        BF00AE9BC200B09DC600B19FC600B4A2C300B5A3C400B2A0C800B9A7C400BAA9
        C700C5B5C500C5B7CB00C6B8C800C7B9CD00C8BBD300CABED200DFC9AC00DFC9
        AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCBB200DFCCB200DFCC
        B300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCEB800DFCFB800E0C9
        AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E3CEB300E1CEB500E4CEB300E4CF
        B400E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
        B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
        BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
        BD00E2D3BE00E3D3BF00E4D1B800E4D1B900E5D1B800E5D1B900E5D2BA00E5D2
        BB00E5D3BB00E6D3BB00E5D3BD00E7D4BC00E6D4BE00E7D4BE00E8D4BD00CFC4
        D400D4C7C700D1C4C800D1C5CA00D1C6CC00D2C6CD00D6C9C700D7CCCF00DACD
        C500D9CECB00D1C6D800D9CFD000DFD3C300DAD2D500DBD3D600DED5D200DFD8
        DC00DFD8DF00E0D3C000E0D3C100E1D3C000E0D4C100E1D4C100E1D4C200E1D5
        C300E3D4C100E2D5C300E1D5C400E0D4C600E2D6C400E2D6C500E3D7C500E2D7
        C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7C600E1D6C900E2D7
        C800E7D8C600E7D9C700E3D9CA00E3DACB00E3DACC00E4D9CA00E5DACB00E7DB
        CB00E4DACC00E4DACD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DD
        CF00E8D6C000E9D7C100E8D7C200E9D8C300E8D9C500E9D9C400EBD9C400E8DA
        C800E8DAC900E9DAC800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDC
        CB00E9DCCC00E9DDCF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDE
        CD00EDDFCD00ECDFCF00EDDFCE00EEDFCE00E2DAD000E5DCD000E5DDD100E5DE
        D200E5DED300E7DED200E4DDD600E6DFD500E8DED100E9DED000E8DFD300EADF
        D200E1DAE200EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E6E0DA00E7E2
        D900E7E2DD00E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3
        D400E8E2DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DE00EAE5
        DF00ECE4DB00F0E3D300F0E3D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6
        D900F4EBDF00E6E1E100E8E4E000EBE6E100EBE7E100E9E4E600EBE7E500ECE7
        E000EDE8E200EEE9E300ECE9E400EDE9E500EDEAE500EDEAE600EEEAE400EEEA
        E700EDEAE900EFEBEB00EFECE900F4EBE000F4ECE100F5ECE100F5ECE200F5ED
        E200F7EFE700F0EDEA00F1EEEB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
        EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
        F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF2D1B3B3D1F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA90101010101010
        101090FAFFFFFFFFFFFFFFFFFFFFFFBF1010181B1C1B161511101010A5FEFFFF
        FFFFFFFFFFFD50102C333535342E2C2718131010104BFDFFFFFFFFFFFF501040
        40676867653F3D3A332C182210104DFEFFFFFFFFBF106B6E737474716F69673F
        3D342C19131010A5FEFFFFFA106A7482838383827F746F69653D342C19121010
        F8FFFF90237D89A8A9A9A9A8A7837F746C673D342C18101090FEFE107BA8ADAD
        B6B6B6ADADA9A753746C653D3327151010FDF010A8B4B7C2C5C5C5C2B7B40D00
        8274693F3A2C192210EAD123B4B9C6C9D6D6D6C9C60F0000A77F6F673D332715
        10CFBE2FB9C8D6DDE1E1E1DD51000000A88374693F342C1810A5BE37C6D6DFEB
        EDEEEDEB51000000AAA77F6F653A2C1910A5D125C9DDEBEEF6F6F6EEE20F0001
        ACA88271673D2D1910CFF210D6E1EDF6F9FBF9F6E3D80F01B6A98374683D2D1B
        10EAFE10C5DFEEF6FBFFFBF6EEE1D551B6A98374683D2D1810FDFF904CE1EDF6
        F9FBF9F6EDE1D6C5B6A98374683D2D1090FEFFFA10C8EBEEF6F6F6EEEBDDC9C2
        ADA88271673D2710F8FEFFFEB321E0EBEDEEEDEBDFD6C6B7ADA77F6F653910A5
        FEFEFFFFFE502ADCE1E1E1DDD6C8B9B4A98374693F104DFDFEFFFFFFFFFD5021
        C5D6D6C9C6B9B6AAA77F6F3D104DFAFEFFFFFFFFFFFFFFBF1048B6C2B7B4AAA7
        826B2310A5FDFFFFFFFFFFFFFFFFFFFFFA90101024272722101090F8FEFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEF0D1B3B3D1F0FDFEFEFFFFFFFFFFFF}
      DisabledImage.Data = {
        46040000424D4604000000000000060200002800000018000000180000000100
        08000000000040020000610F0000610F00007400000000000000AFAFB000B9B9
        BA00BABABB00BCBCBD00BEBEBE00BEBEBF00C1C1C100C2C2C300C9C9CA00CCCC
        CC00CDCDCE00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1
        D200D1D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
        D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7D700D7D7D700D7D7
        D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADA
        DA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDD
        DD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0
        E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E3E3
        E400E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
        E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
        EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
        EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
        F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7
        F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFD
        FD00FEFEFE00FFFFFF007373737373737373726C635D5D636C72737373737373
        737373737373737370573C2E25211F222B3C577073737373737373737373735E
        37281B1616130F0C0B0B1C355E7373737373737373725030242121211E1B1813
        0F0C0A0B2850727373737373735030292A2A2A292724211E18130F0B0A225073
        737373735E342F31343434312F2C2924211B130F0B0A285E737373703736383B
        3D3D3D3B3836312C27211B130F0A0A3570737357373D424545454545423D3834
        2C27211B130C091C5773723C42454B4B4D4D4D4B4B454211342C2721180F0B0A
        3C726C38484B4D51535353514D4B0B003B342C241E130C0A2B6C633D4D4F5658
        5A5A5A58561200004238312921180F0B22635E404F565A5D5F5F5F5D1A000000
        453D362C241B130C1C5E5E42565A5E6163656361110000004842382F271E160C
        1C5E6341585D6167686A6867600C000048453B312921160F22636C3C5A5F6368
        6C6F6C68635B0B004D453D342A21180F2B6C723D585F656A6F736F6A655F5A1D
        4D453D342A2118123C7273574B5F63686C6F6C68635F5A534D453D342A211821
        577373703A5B6167686A6867615D58514B453B3129211835707373735E415E61
        636563615E5A564D4B42382F271E2E5E737373737350475D5F5F5F5D5A564F4B
        453D362C242D50737373737373725041585A5A58564F4D484238312C30507273
        737373737373735E3A4853514D4B48423B3431375E7373737373737373737373
        70573F3C3F3F3D38353C57707373737373737373737373737373726C635D5D63
        6C727373737373737373}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AA7CBD00B58E
        C100B791C400B893C600BA97C300BE9DC300BF9FC600B5BFC600A7C1D900A7C3
        DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6
        DB00AFC7DD00B5C0C700B7C0C500B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0
        C000BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6
        D800B0C7DC00B0C8DE00B8C6D000B9C7D200BACAD700B8C8D700B9CBDB00A7C9
        EC00A6CAEC00A8C5E200A9C6E100A9C7E400AAC8E500AAC9E700AFCAE300AFCB
        E600AFCAE500AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCF
        F000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CE
        E900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3
        ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
        F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C8AEC500C8AECA00CAB0
        C800CBB2CC00CCB3D200CDB6D100D3BFC800D2BDD300C3C3BE00C7C3BB00C8C5
        BD00C8C6BF00D2C8B700D7CAB700D6C9B600D7CDBD00DECCB400DFCDB600DFCE
        B700DFCEB800DECFBA00DFD1BE00E0CFB900DFCFB800E0CFBA00E0D0BA00E0D0
        BB00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D3BF00E0D2BD00C0C2C000C3C4
        C000C3C5C300C1C7CA00C2CACE00C1C9CC00C8C6C100C8C8C300C9CAC600CACD
        CD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4
        DD00CDD5DA00CFD7DD00D6C4C700D3C0CA00D4C2CC00D3CDC200D7CFC000D8C6
        C700DBCBC500DACBCB00D8C9CF00D4C0D700DACCD000DCCFD600D7D0C300D5D0
        C700D6D4CD00DFD2C300D8D3C900DAD5CC00DFD3D200DCDAD300C3D3E000C5D6
        E600C1D5E900CCD8E300CBDAE900CCDBEA00D0D9E000D2DCE400D4DEE900CEE2
        F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEB
        FA00DCEBFB00E0D3C000E0D4C100E1D4C100E1D4C200E1D5C300E0D4C200E2D6
        C400E2D6C500E2D7C600E2D7C700E1D5C500E1D7C900E2D7C800E3D9CA00E3D9
        CB00E3DACB00E3DACC00E3DBCF00E4DACC00E4DACD00E4DCCF00E1D5DE00E2D9
        D000E5DCD000E5DDD100E5DED300E5DED200E6DFD500E4DED500E2D7E100E7DF
        E100E6E0D600E7E1D700E6E0D500E7E2D900E6E0DA00E7E1DD00E8E2DA00E8E3
        DB00E9E3DC00E9E4DC00E9E4DD00EAE5DF00E8E5DF00E1E2E200E0E4E700E2E6
        EA00E5E7E900E9E3E000EAE3E600EBE7E100EBE6E100EBE6E500ECE9E400EDE9
        E500EDEAE600ECEAE700EDEAE700EFEAEA00EFECE900E2EFFC00E4F0FC00F1EE
        EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
        FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDAF563A3A56AFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8372A0808080B08
        08092AEFFDFFFFFFFFFFFFFFFFFFFF3A0908075F6060636060190B0937FAFFFF
        FFFFFFFFFFFA2A08137962626664646360606019082AF8FDFFFFFFFFFF2A087B
        808F9BB4B37674726967636060082AF8FDFFFFFD37087C819CBCBCBBBAB7B576
        776D676563600837F8FDFFF00925819DC6C6C6C5C0BFBAB7B574706865631908
        B2FAFD3709869FCBCDCDCDCBCAC6C0BCB7B5746D6765630B2AF8FA2A2687CFD4
        D3D2D2CECECDCA5DBFB7B5776D67636009F0AC09879FD5D8DBDBDBD8D3D45A00
        C5BCB7767268656308564E098BCFDCDDE5E5E5DDDC5C0000CAC0BAB5746D6463
        083A3709DFDFE5E9ECECECE95C000000CBC6BFB7767168650B37380ADFDEEAF2
        F3F4F3F25E000000CCCAC0BAB5736A650B37542ADFE2F2F4F6F6F6F4ED5C0000
        CCCBC5BBB5746A64084EAF09E0E2F1F6FBFCFBF6F2E95C00CECDC6BCB6746B64
        08ABFA09A1E0F4F6FCFFFCF6F4ECE695D2CDC6BCB6746B6109F0F8372AE1F2F6
        FBFCFBF6F3ECE5DBD2CDC6BCB674660B2AF8FAEF2AA4E2F4F6F6F6F4F2E9DDD8
        CECBC5BBB56C6209ACF8FAF8372AE0EBF3F4F3F2EAE5DCD3CECAC0BAB5660837
        F0FAFDFAF82A2AE0E2ECECE9E5DCD5D4CDC6BFB76C082AF0F8FDFFFDF8F02A09
        A4DEE5DDDCD5D2CCCAC0BA8F082AAFF8FAFDFFFDFAF8F837092AA6D5D3D4CCCA
        C59A080937B2F8FAFDFFFFFFFDFDF8F0B2372A090909090809092AABF0F8FAFD
        FFFFFFFFFFFDFDFAF8F0EF563737373756EFF0F0FAFDFDFDFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AC7EBF00B187
        C100B48CC500B68EC600B790C500BA95CA00DBBFA300DDBFA300DDBFA400C09F
        C800C09FCA00C5A7CA00C8ACCD00C8ACD400CFB7D400CFB8D600D1BCCE00D0BA
        D100D1BAD700D1B9D900D3BCDA00DCC0A400DCC1A500DDC0A500DCC0A500DCC1
        A700DCC2A600DCC3A800DCC3A900DDC2A800DDC3AA00DEC3A900DEC3AA00DEC3
        AB00DDC4A900DCC4AB00DDC5AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7
        AF00DFC5AC00DEC4AD00DEC6AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8
        B000DEC9B200DEC9B300DFC8B200DECAB400DECAB500DFCDB700DFCEB700DFCC
        B800DFCEB900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8
        B100E2C8B200E2C9B300E1CBB700E2CAB400E3CAB600E0CDB500E0CDB600E0CE
        B700E0CFB700E2CBB800E1CCB900E0CFB800E1CFB900E1CEB800E0CFBB00E3CC
        B900E3CCB900E2CDBA00E3CDBB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CF
        BE00E4CBB800E5CDB800E5CDB900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CF
        BD00E6CFBE00E0D0B900E0D0BA00E1D0BA00E0D1BB00E0D1BC00E0D1BD00E0D0
        BC00E1D1BE00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2
        BD00E3D3BF00E5D0BF00E6D0BD00E6D1BE00E7D1BE00E7D2BF00D7C5D000D9C6
        DF00D9C9D100DACBD400DDCFD700DBCBD800DFD3CF00DFD1E400E1D1C000E1D3
        C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3C100E1D4C100E1D4C200E2D4
        C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6C500E2D6C600E2D7C600E2D7
        C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7C700E4D7C600E3D7C800E6D6
        C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DACB00E3D9CC00E5D8C900E4D9
        CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E5DACC00E4DACD00E4DBCE00E4DB
        CF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4C300E8D4C400E9D5
        C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
        CF00E0D4D000E2D7D100E2D7DF00E3D9D000E3DAD500E4DBD700E5DCD000E5DD
        D100E7DDD000E6DDD300E6DED300E7DED300E6DED400E7DFD500E7DFD400E4DA
        DA00E7DFD900E2D5E500E4D9E500E6DBE700E6DEE000E7E0D700E8E0D500EFE1
        D500E8E1D900E8E1D800E8E2DA00E9E3DA00E8E2DC00E9E3DF00EAE4DD00EBE5
        DD00EAE5DF00EBE6DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8
        DF00E9E1E500EBE6E000EBE6E100EBE6E600EBE4E800ECE5EA00ECE6E900EDE7
        EB00ECE8E400EDE9E500EDE8E700EEEAE700EEEAE600EEEBE800EFEAEB00EFEC
        E900F3E9E000F4EAE100F4EAE200F5EBE300F6EEE800F7EFE900F7EFEA00F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF4B86161B8F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3E060606060606
        060608F9FFFFFFFFFFFFFFFFFFFFFF760606061B23242216150606065AFDFFFF
        FFFFFFFFFFFC07061929333A8698A3954E3B16070607FAFEFFFFFFFFFF070633
        366A9CC1C7D4DAE4E3D99422150607FCFFFFFFFF76063A568AA1C0C7D4E3EBEF
        F1EFEBC53D1A065BFDFFFFFA06338084909EC1CFDAEBF1F9F9F0F1EBC53B0706
        F7FCFD1F0688848891A7C6D4E4EFF9FA797FF9F1E4951A0608FCFD0653966788
        91A7C6D4E4F1F979007FF9F0E4D0320706FBE1069886678891A7C6D4E4EF1400
        007FF0F0E4D2722606DDB406A6706687909EC1CFDA7C00000079F0EBDAD39524
        06AE5C06C665646F8DA1C0C7D4DA0A000014E5E3D4C79A2F06426106D6704D68
        8891A5C1C7D2CE090011D6D4C7C197320646B806D89448506F8D9BA7C1C7BFCA
        0910CFC7C1A7893206B3F406D7A4354D67878D9BA5C0C1C3BEBBC1C0A59B6B32
        06DDFC06B9D847474D68878D91A19EA7A7A79EA1918D4D2606FAFC1708EBA432
        474D676F888D90919191908D886F490607FBFEF906C5EE6532474D50686F8788
        8888876F6F682F06F5FBFEFD5C06DBE4553235484D646667676766676F3A0641
        FAFDFFFDFC0706E3EE95323247474849494D6F8B670606FAFCFEFFFEFDFA0706
        C5DBD9A2714E4E678A9A8F3A0606F9FCFDFFFFFFFFFDFC5E0606AAD4D3C7C4C0
        A56D060641FAFCFDFFFFFFFFFFFFFDFCF826060606060606060607F4FAFCFEFF
        FFFFFFFFFFFFFFFDFCFCFADCAD5A5AADDCFAFAFAFDFEFFFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsPrior1
      DockOrientation = doNoOrient
    end
    object ElSpeedButton3: TElSpeedButton
      Left = 1
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A590BF00AA95
        BF00B29EBF00A691C100AB97C200B29FC200B3A0C400B4A2C200B5A3C600B6A5
        C600B3A2C800B5A3C900B8A7C700B8A8CC00BFB0C700C3B2BF00CABABF00C1B0
        C100C3B2C200C3B4C700C4B4C300C1B3CC00C3B5C900C7BACE00CDBFC600C8BA
        C900C9BDCE00C5B8D100C8BBD400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D4C5
        BE00DFCAB000DFCBB000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCC
        B400DFCDB600DFCEB700DACBBE00DFCEB800DFCFB800DECEBA00DCCDBD00DECF
        BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CEB500E4CEB300E4CF
        B500E4CFB600E0CFB900E0CFB800E0CFBA00E3D0B700E4D0B700E5D1B700E1D0
        B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1
        BC00E0D2BD00E0D2BE00E0D2BF00E3D3BF00E3D2BD00E5D1B900E5D2BA00E5D3
        BB00E6D3BB00E5D3BD00E7D4BE00E7D4BC00E8D4BD00CDC0CA00CFC3CE00CCC1
        D200CCC1D800D5C7C200D0C4CF00D7CBCB00D7CBC900D9CBC000DACDC200DBCE
        C600DACEC400DCCFC500D8CDCA00D8CECD00D9CFCE00D1C6D400D4CAD200D5CC
        D300D6CDD200D5CCD700D3C9DC00D6CDDA00D7CDDD00DED1C000DED2C600DFD4
        CA00DAD1D100DAD2D500DDD5D000DFD7D200DFD7D400D9D0DE00DDD6DA00DCD4
        E200DFD8E500E0D3C000E1D3BF00E1D4C100E0D4C100E1D4C200E1D5C300E3D4
        C100E0D4C400E1D5C600E2D6C400E3D7C500E2D7C600E2D7C700E4D6C200E6D5
        C100E3D7C600E1D6C900E3D7C800E7D8C600E3D9CA00E3DACB00E2D8CC00E3DA
        CC00E3DBCF00E5DACB00E5DBCC00E4DBCE00E6DBCC00E4DCCF00E6DDCF00E9D7
        C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADB
        C900EADBCA00EBDCCB00EADCC900EADDCD00EADDCD00EDDDCA00ECDDCA00EDDF
        CD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDDCC00E1D8D000E3DBD000E2DA
        D400E5DCD000E5DDD100E5DED300E7DED200E6DFD500E6DFD600E1DAD800E2DC
        DD00E4DED900E9DED100E9DFD300E0D9E000E0D9E400E5DFE100E2DBE800EEE0
        CF00E7E1D700E6E0D600E7E2D900E7E1DA00EAE1D700EFE2D200EFE2D300EEE1
        D100EFE3D400E8E2DA00E9E4DC00E9E4DD00EAE5DF00E9E4DE00ECE4DB00F0E3
        D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E8E3E700EBE7
        E100EBE7E500ECE7E000EBE6EA00EAE6EE00EEE9E300ECE9E400EDE9E500EEEA
        E500EEEAEE00EFECE900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EF
        E700F0EDEB00F1EEEB00F1EEEC00F2EFED00F1EEEE00F2EFF100F7F0E800F7F1
        E900F7F1EA00F8F2EB00F9F4EE00FAF5EF00F3F1F300F4F2F000F5F3F100F5F3
        F300FAF5F000FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF3D6C1C1D6F3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB561E1E1E1E1E1E
        1E1E9EFBFFFFFFFFFFFFFFFFFFFFFFC91E1E1E322234321E1E1E1E1EA7FEFFFF
        FFFFFFFFFFFD401E373C41484349422A361E1E1E1E55FDFFFFFFFFFFFF561E46
        7D7D7F7D7B4C48483D2A1F1E1E1E40FEFFFFFFFFAD1E81848A8A8786847F7D4C
        483D2D221E1E1EC1FFFFFFFB1E458E919191958F8E8C837F7D4A432D221E1E1E
        F4FEFE9E328EB2B2B3B4B49798958E87807D4B3D3C321E1E9EFFFE1E8DB3B4B6
        B66857B6B4745D91876021483D291E1E1EFBE91E97B6C2C4CC5817CB76035797
        7100104C482D341E1EE9D532B6C4CDCED9671CBA03001A7400000F7D4B3D291E
        1EC7C13EC4CFD9DFE06C150000001900000010804C3D3C1E1EA7C13FCDD9E0EA
        EA6C1B0000000E00000011827D433B221EA7D636CEDFEAEDF66E5A7A0000596B
        000014837D483B321ED5F31ECEE1ECF8F9796CEF7A005AC56A0019857F483D25
        1EE5FC1ECCE3EDF6FCDD7AF6EEBD78CCB6725B8A7F4B3B1E1EFDFE9952E1ECF7
        F9FCF9F9ECE3CECCB6B5928A7F4B3B1E56FFFEF51ECEEAEDF9F9F6EFE3DACEC4
        B69791847D4B321EFBFFFFFDAD33E1E3ECEEEBE3E1D9CDC2B4B28E837C481E9E
        FDFFFFFFFF5638DFE1E0E3DFD9CFC4B6B491877F421E52FDFFFFFFFFFFFD5533
        CCD9D9CECDC4B6B4978E86481E38FDFEFFFFFFFFFFFFFEAD1E46C3C4C4B4B497
        914D1E1EADFEFEFEFFFFFFFFFFFFFEFDFA9E1E1E333737331E1E56F5FEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFDE9D5C1C1D6E9FBFDFEFEFEFFFFFFFF}
      DisabledImage.Data = {
        8A040000424D8A040000000000004A0200002800000018000000180000000100
        08000000000040020000610F0000610F00008500000000000000B1B1B200B2B2
        B300B4B4B500B6B6B700BABABA00BBBBBC00BDBDBE00BEBEBF00BFBFBF00BFBF
        C000C0C0C100C1C1C200C5C5C500C6C6C600C6C6C700C7C7C800C8C8C800C8C8
        C900C9C9C900CACACA00CACACB00CDCDCE00CECECE00CECECF00CECFCF00CFCF
        CF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1D200D1D2D200D2D2
        D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
        D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
        D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
        DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
        DE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1
        E100E1E1E200E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E3E3E400E3E4
        E400E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
        E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
        EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
        EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
        F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
        F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
        FC00FDFDFD00FEFEFE00FFFFFF008484848484848484837D746D6D747D838484
        84848484848484848484848481674B3C332F2D30394B67818484848484848484
        8484846E45362A2525221D1A17182B436E848484848484848483603E322F2F2F
        2D2A27221D181518366083848484848484603C373838383735322F2D27201B17
        15306084848484846D413C3F4242423F3D3A37322F2A201B1715366D84848481
        454346494C4C4C4946443F3A352F2A201B15154381848467454B525555555555
        524C46423A352F2A2018152B6784834B51545B5B5D31265B5B443449422C1A2F
        271B151548837C45575B5D61632719614C0124523D0113302B201815367C744C
        5D5F66686A2D1E5B02001D4901000F372F271B152E736E4F5F666A6D6F321400
        000016000000143A302820182B6D6E52666A6E727438140000000F0000000B3D
        352D25182B6D7451686D7278793E2952000026370000133F372F251B30737D4B
        6A6F74797D442D744C00265D34001442382F271B397C834C686F767B805D467B
        765544635B3D2642362F27204B8384675B6F74797D807D79746E6A635D554C42
        362F272F67848481486A7278797B7978726C68615B55493F342F274381848484
        6E4F6E72747674726E6A665D5B52463D332B3C6D84848484845F556C6E6E6E6C
        6A665F5B554C443A323960848484848484836051676A6A68665F5D5852463F3A
        3D608284848484848484846D455863615D5B585249423F446C84848484848484
        8484848481654C494C4C4C46424966818384848484848484848484838383837D
        746C6C747D838484838484848484}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AA7BBC00AB7D
        BD00AB7DBE00B48DBF00B995BF00BD9ABF00B58FC200B791C200B792C300B892
        C600BA94C800BD9BC400BE9CC100BE9EC600BF9EC900B5BFC600A7C1D900A7C3
        DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4
        D800B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4
        CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
        D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCA
        E300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCF
        F000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CE
        E900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3
        ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
        F400BED7F000BBD9F600BED8F100BEDAF600C7AAC000C7ADC700C9AEC500CBB2
        CB00CAB0C900C9B0CD00CBB3CE00CEB6D200CFB7D700D1BBC200D2BDC500D1BA
        D700D3BED600C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D6C9B600D7CD
        BD00D9C7BF00DECCB400DFCDB600DFCEB700DFCFB800DECFBA00DECFBD00DFD1
        BE00E0CFB900E0CFBA00E0D0BB00E0D0BA00E0D1BC00E0D1BD00E0D2BF00E0D2
        BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CA
        C600CACDCD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3
        DB00CAD4DD00CDD5DA00CFD7DD00D5C1C100D6C4C700D5C3CC00D3CDC200D7CF
        C000D9C7C500D9C9CB00D9CACD00DBCDCF00DDCFCA00D5C2DA00D9CAD600DBCE
        D300DDCFD200D7D0C300D5D0C700D6D4CD00DFD1C200D8D3C900DAD5CC00DDD0
        D600DED1D900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
        E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9
        F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5
        C300E0D4C100E2D6C400E2D7C600E2D7C700E1D6C500E1D7C900E2D6CA00E2D7
        CC00E3D9CA00E3DACB00E3DACC00E3DBCF00E2D9CE00E4DACD00E4DCCF00E0D4
        DE00E3DAD000E3DBD400E5DCD000E5DDD100E5DED300E5DED500E2D9DC00E6DF
        DA00E6DCE700E6DCE500E6E0D600E7E1D700E6DFD500E7E2D900E8E3DB00E8E3
        DF00E9E4DC00E9E4DD00EAE5DF00E8E5DF00E1E2E200E0E4E700E2E6EA00E5E7
        E900E8E1E300EBE7E100EBE6E100EBE7E500EBE5E800ECE9E400EDE9E500EDEA
        E600ECE9E600EEEAEA00EFECE900E2EFFC00E4F0FC00F1EEEB00F0EEEB00F1EE
        EC00F2EFED00F2EEEF00F4F2F000F5F3F100F4F1F300F7F6F500F2F8FD00F3F8
        FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDB2553A3A53B2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB22D111010131010
        102D37F8FFFFFFFFFFFFFFFFFFFFFD3A2D10130F1E64640F0F0F131037F8FDFF
        FFFFFFFFFDED2D100F0F1E67686B6B686B686401102DFAFFFFFFFFFFFD2D1013
        69707178796F6D6B6B6B68641E102DEEFFFFFFF837102190B9BEBCBEBBB9BA79
        756B6B6B670F1037FFFFFFEE2D109FC4C5C4C4C4C2BDBCBABA796E6B6B641E10
        AEFDF82D1082C6CDCDCDCECDC8C4C2BCBB79796B6B6B641037FDFA2D10A3D6CE
        D4D4D4D6CE8FC8C3BC5F79756B6B671E10B23A1088CFD5D7DADAD8D85901CEC5
        5F01BA796D6B681E10AE3A2D86D7DBDCE3E3E35D0001D4590000B9BA796B6B64
        13373711D0DBE3E8E9E95D0000015A000000BCB9796B6B641337372DDEDDE9F0
        F1F1610000005C000000BEBEBA756B6B132D3A11DEE7F0F2F4F5F65B0002D957
        0000C3BBB7766B64133AAF2DA7E7F1F5F7FCF7F65E02E3D15700C3BCBA796D68
        1053AF11AAE9F2F5FCFFFCF6F098E3D8CF8FC4BCBA79680F11F8F82D2DDFF0F6
        F7FCF7F5F0EBE3D8D4C5C5BCB9796E102DB5FA5311ABF0F2F5F5F5F2F0E7DDD7
        CFCDC3BCBA690F11B2F8FDF8372DA8ECF0F2F0ECE9E3DDD5CECDC2BBB66F102D
        EDFDFFFAB22D11E5ECE9E9E7E3DDD5D4CEC4BDBA7C102DEDF8FDFFFDF8B52D2D
        48E3E3DCDBD7D4CDC8C2BE9C102D53FAFFFFFFFDFDFDAF2D1112DED7D5D6CEC8
        C329101137B2F8FFFFFFFFFDFDFDF8B5AE372D111111111011112D37F8FAFDFD
        FFFFFFFFFFFFFDFDFAF8AF37373737373AAEAEF8FDFDFDFFFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AB7DBD00AC7F
        C000B085BF00B187C100B38BC300B38AC400B68EC300B58EC400B790C800B993
        C700B992C800BD9BC500BF9EC600BC98CA00DBBFA300DDBFA300DDBFA400C09F
        C700C09FCD00C3A4C600C2A3CC00C3A5CC00C5A8C700C5A8CB00C7A9D100C9AB
        D400CBB1CD00CCB3CE00CDB4CF00CEB6CC00CBB2D100CDB5D000CEB6D200CDB3
        D800D0BBCC00D3BFD600D3BCDC00DCC0A500DCC1A700DCC2A600DCC3A800DDC2
        A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DDC5AB00DCC4AB00DEC4
        AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AC00DEC6AD00DEC7AF00DEC8
        AF00DDC7B000DDC8B000DEC9B200DEC8B200DECAB400DFCBB500DFCDB700DFCE
        B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E1C7B100E2C8
        B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
        B700E0CFB700E2CBB800E0CFB800E1CFB900E0CEB800E0CFBB00E3CCB900E2CD
        BA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CB
        B800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CF
        BE00E0D0BA00E1D0BA00E0D1BB00E0D0B900E0D1BC00E0D1BD00E0D0BC00E1D2
        BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2BF00E5D0
        BF00E6D0BE00E7D1BF00E7D2BF00E6D0BD00D5C2CC00D6C4CF00D7C6CD00D9C9
        CE00D6C3D400D7C5D100D9C9D200DDCFD300DCCEDB00DCCDDF00DED1CC00DFD3
        CF00DFD2CE00DED1D900D8C4E000E1D1C000E1D3C000E3D1C100E3D1C000E2D2
        C100E2D3C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6
        C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7
        C700E4D7C600E5D7C500E1D6CB00E3D7C800E0D5CE00E1D6CE00E6D6C900E4D8
        C700E3D8C800E3D8C900E2D8C900E3D9CB00E3DACB00E3D9CC00E3D9CE00E3DA
        CC00E3DACD00E5D8C900E5D9CB00E5DACB00E6D8CA00E7DACB00E4D8CD00E4DA
        CC00E5DACD00E4DBCE00E7DBCD00E7DDCF00E8D3C100E8D4C300E8D4C400E9D5
        C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
        CF00E0D5D200E2D7D100E0D4D500E2D7D600E0D4DD00E3DAD000E4DBD200E5DB
        D700E5DDD100E6DCD000E6DDD300E6DED300E7DFD400E3D9D900E4DBDC00E5DD
        D800E6DDDB00E4D7E800E8DDE900E7E0D700E8E0D500EFE1D500E8E1D900E9E3
        DA00E8E1DE00EAE4DD00EAE5DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3
        D800E9E3E200EAE3E600ECE6EA00EDE9E500EEEBE800EFEAEB00F3E8E000F4EA
        E200F5EBE300F4EAE100F0EDED00F6EEE800F7EFE900F7EFEA00F0E9F000F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF1C86767C8F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70E0E0E0E0E0E0E
        0E0E45FAFFFFFFFFFFFFFFFFFFFFFF7B0E0E0E0E0E0E0E0E0E0E0E0E10FFFFFF
        FFFFFFFEFEFA0E0E0E0E2B3E94AFB9A16C270E0E0E0FFCFFFFFFFFFEFE0F0E0E
        7397AFD0DDE0E4E4E4E3780E0E0E0EFCFEFFFFFE470E428D9BADCFD6E0E4EDEE
        EEEEEDDE280E0E65FEFFFFFA0E0E97949BADD2DDE4EDEEF4F4F9F4EDBD0E0E0E
        E9FFFE0F0E8D97949BB2D4E1E4ED24DBFCFB238CE4A30E0E10FFFD0E33CB6F94
        9BB2D5E1E4230087FE8C0082EDDD2F0F0EF7C80EA4A957949DB2D4E01E000087
        8C00008CE4E0760E0EE9C00E9B9F6C8E9CAED0830000001800000020E3DD9A0E
        0E61610ED4716A7399ABD2D20300002408000022E1D6AE0E0E4D650EE26E546F
        949BADD2CA060023D809001CD6D2A9390E45C20EE3A041577399AAB2D2D20B22
        E0E10B22D2BB94250EC4F00ED0C93C526E9399AAB1CFD2CFD5D5D0A6AEAA7539
        0EC8F50ED4E43C4F436F93999CAEAEB2B2B2AEAB9C973F0E0EFAFA0F10EEB33C
        4F546E7393979C9D9D9D9C999472410E0EFAFEF00EE1EE6B394F54576F739394
        9494937372430E0EF5FCFEFC490EE7ED55393E41526A6C6E6E6E6C6E75430E0F
        FAFFFEFEFA0E0EEDEDA34F393C4F4141415471973A0E0EFAFDFFFFFEFDFA0F0E
        B6E4E1B57752546C96AA99430E0EF2FDFEFFFEFEFEFEFC0F0E26D5E1DDDED2D2
        B13D0E0E4AF7FCFEFEFFFFFEFEFEFEFAF2450E0E0E0E0E0E0E0E0EE5FDFEFEFE
        FEFFFFFEFEFEFEFEFEFEF9C74D484D7BC8F0F7FCFEFEFEFEFFFF}
      TransparentColor = clBlack
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsFirst1
      DockOrientation = doNoOrient
    end
    object ElSpeedButton13: TElSpeedButton
      Left = 1511
      Top = 1
      Width = 30
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F0000000100000000000048C893004EC8
        94005FCB9C005FCC9D0071CDA20074CEA40075CFA60070D0A70078D1A9007DD1
        AB007CD2AC0086CFA90081D3AE0083D2AD0084D1AD008CD2AF008ED2AF0090D4
        B30095D3B30099D2B200A3D3B600A4D5B800A6D5B900A5DABF00A7D8BE00A9D3
        B600AFD3B700AFD5BB00AFD8BF00B7D4BB00B4D6BC00A3DCC200A7DBC200A8DD
        C400AEDCC500B7D8C100BBD7C000B9D8C100BDDECB00BEE0CE00C7D6BF00C8D4
        BD00CED5BF00DFC9AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCB
        B100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCE
        B800DFCFB800DFD2BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CE
        B500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0
        B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1
        BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3
        BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
        BE00E7D4BC00E8D4BD00C4D9C400C7D9C500CAD7C200CFD6C100CED7C300CFD7
        C400CAD8C500CEDAC800CCDFCF00CFDCCC00D5DBCB00DBD3C000DDD4C000DFD7
        C600DBDACA00DCD9C900DFDBCC00DCDCCD00CBE1D200C9E3D400CFE3D700D5E5
        DA00DCEAE100E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D5C300E2D5
        C300E3D4C100E1D5C400E1D6C500E1D7C700E2D6C500E3D7C500E2D7C700E3D7
        C700E4D6C200E6D5C100E3D7C600E2D7C800E7D8C600E0D9CA00E3D9CB00E3D9
        CA00E1D8C900E3DACC00E2DBCE00E5DACB00E4DACD00E4DBCE00E5DBCC00E4DC
        CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
        C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00EADDCD00EADE
        CE00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDD
        CC00E0DFD300E5DDD100E5DCD000E5DED300E7DED200E6DFD500E4DFD400E9DE
        D100E8DFD300EADFD200EEE0CF00E7E1D700E6E0D600E3E2D900E4E1D800E7E2
        D900E4E4DC00E4E6DE00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
        DA00E9E4DC00EAE5DF00E9E4DD00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5
        D600F1E5D700F1E6D900F4EBDF00E3EBE400E7E8E100E7E9E300E5EAE400EBE7
        E100EBE6E100ECE7E000EBEBE700EEE9E300ECE9E400EDE9E500EDEAE600EEEA
        E700EEEAE500EFECE900EEECE800F4EBE000F5ECE100F4ECE100F5ECE200F5ED
        E200F7EFE700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
        EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
        F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF2D3BCBCD3F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA632C2C2C2C2C2C
        2C2CA0FAFFFFFFFFFFFFFFFFFFFFFFC72C2C2C3C2F3E3C2C2C2C2C2CAAFEFFFF
        FFFFFFFFFFFD4A2C41454B524D534C37402C2C2C2C62FDFFFFFFFFFFFF632C50
        7E7E7F7E5856525247372D2C2C2C4AFEFFFFFFFFB02C81818C8C8C8886807C56
        5247392F2C2C2CBCFFFFFFFA2C4F919096967373918986807E544D392F2C2C2C
        F3FEFF9B3C9199B4B5B6130064989189807E5547453C2C2CA0FFFE2C8EB3B5B7
        B7BD0100006E999389807E5247362C2C2CFAE92CB3B7BDC1CA120000000FB3B3
        938C7F5552393E2C2CEAD33CBAC1CACB27000011010065B59991867E5547362C
        2CC5BC48C1CCDADD7A070CC3780001B2B59689805747452C2CAABC49CCD9E0E3
        EBEDEDE3D726000DB59991867E4D462F2CAAD340CBDEECEEF6F6F6EEE3DC1200
        1BB393867E52463C2CD2F22CDAE0EDF5F7FBF7F6EDE0C315002598887F554732
        2CE6FC2CCAE0EEF6FBFFFBF6EDE1D7CA180028887F55462C2CFDFE9B5FE1EDF6
        F7FBF9F5EDE0DACAB76A021D8254462C63FFFFF42CCBECEEF6F6F5EEECDECBC9
        B5B3902A58543C2CFAFFFFFEB03CDDECEDEEEDECE0D9CCBDB5B4918658522CA0
        FDFFFFFEFE6342DEE0E0E0DED9CCC1B8B59689814D2C5FFDFFFFFFFFFFFD633C
        CAD9D9CBCCC1BEB5999186522C42FDFFFFFFFFFFFEFEFFAA2C5EBDC9BDB8B59A
        93592C2CB0FEFFFFFFFFFFFFFFFFFFFEF8A02C2C3D41413D2C2C63F4FEFEFEFF
        FFFFFFFFFFFFFEFEFFFFFDEAD2BCBCD3EAFAFDFEFEFEFFFFFFFF}
      DisabledImage.Data = {
        4E040000424D4E040000000000000E0200002800000018000000180000000100
        08000000000040020000610F0000610F00007600000000000000B4B4B400B5B5
        B600BBBBBC00BCBCBC00C0C0C000C2C2C200C3C3C300C4C4C500C6C6C600C7C7
        C800C8C8C800CACACA00CCCCCD00CDCDCD00CFCFD000CFD0D000D0D0D000D0D0
        D100D0D1D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D400D4D4
        D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
        D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
        DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
        DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFDF
        E000DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2
        E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6
        E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9
        E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECED
        ED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1
        F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5
        F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFA
        FA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007575757575757575746E655F5F65
        6E74757575757575757575757575757572593F30272321242D3F597275757575
        75757575757575603A2A1D181816110E0E0D1E37607575757575757575745232
        26232323201D1A130E0E0D0E2A527475757575757552302B2C2C2C2B29262320
        1A140F0D0D245275757575755F35303336363633312E2B24211B160E0E0D2A5F
        757575723A373B3E404038363B38332E29231D130E0D0D37727575593A3F4447
        47440E0029403B362E29231D140E0C1E5975743F44464D4D4F4D01000038443E
        362E29231A0F0D0D3F746D3A494C4F53550E0000000B4A443E362E241E140E0C
        2D6D65404F51585A3B00000D0100334A443B332B231A0F0D2464604351585C5F
        520409544100014A4740382E241B140E1E5F6044585C6063656664635C2E000A
        4D443B312920170E1E5F64445A5F63696A6C6A69635D0E0022473E332B23170F
        24646D3F5B61656A6E716E6A655F550E002340362C231A0F2D6D743F5961676C
        7175716C67605C5313002B362C211A143F7475594C61656A6E716E6A65605C55
        4D2B02172C211A21597575723D5D63696A6C6A69635E5A534D44361D2B211A37
        727575755F445F6365676563605C584F4D443B31281E305F757575757552495F
        6161615E5C58514D4740382E262D527575757575757352425A5C5C5A58514F4A
        443B332E31527375757575757575755F3B4A55534F4D4A443E3633385E757575
        75757575757575757257403E4040403B363E5872747575757575757575757574
        7474746E655E5E656E747575747575757575}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F000000010000000000005DA0260063A2
        2C0072A9400080AF520082B2560085B2590087B45D008BB662008FB9680093B7
        680091B8690098BB72009ABB74009CBE7800A2BF7D00B5BFC600ACC38800ADC4
        8B00AFC58E00AEC99100B1C48D00B6C59300B6C79600B0C89200B0CA9500B1CC
        9700B7CA9900B6CD9C00BAC99B00BDC99C00BECDA200A7C1D900A7C3DE00A7C4
        DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0
        C600B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0C000BCC2C400BDC4C700B8C4
        CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
        D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9
        E700AFCAE300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CD
        F100ADCFF000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CE
        E500B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1
        E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7
        F300BAD7F400BED7F000BBD9F600BED8F100BEDAF600C1CCA300CBCEAC00CCCD
        AB00C3C3BE00C7C3BB00C8C5BD00C8C6BF00C3D3AD00C4D4AF00C8D0AE00CDD1
        B100CEDABC00D2C8B700D0CFB000D6C9B600D7CDBD00DECCB400DFCDB600DFCE
        B700DFCFB800DECFBA00D1D0B200D1D1B400D2D2B500D0D7BB00D1D4B800D2D7
        BC00D7D7BF00D0D9BD00DBD1BB00DED2BD00E0CFB900E0CFB800E0CFBA00E0D0
        BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3BF00E0D2BD00C0C2C000C3C4
        C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CAC600CACDCD00C3CB
        D100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5
        DA00CFD7DD00D3CDC200D6CFC100D5D0C700D6D4CD00D3DCC300DFD6C300DDD7
        C400D8D3C900DAD5CC00DDD9C600D8DFCA00DCDAD300C3D3E000C5D6E600C1D5
        E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900DFE5D400CEE2F600CEE3
        F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
        FB00E0D3C000E0D3C100E1D4C100E1D5C300E1D4C200E1D5C400E0D6C400E2D6
        C500E2D7C700E2D7C600E2D7C800E1D8C700E3D9CB00E3D9CA00E2D9C900E3DB
        CD00E3DBCF00E1DDCF00E4DACD00E4DCCE00E5DDD100E5DED300E6DFD500E7E1
        D700E5E0D500E7E2D900E5E4DA00E6E8DD00E8E2DA00E9E4DC00E9E4DD00E8E7
        DF00E9E5DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E100ECE9
        E400EDE9E500EDEAE600EEEBE700ECEAE500EFECE900E2EFFC00E4F0FC00F1EE
        EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
        FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDBE664B4B64BEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE3D201F1F221F1F
        1F3D48F8FFFFFFFFFFFFFFFFFFFFFD4B3D1F220F2E6B2E2E0F0F221F48F8FDFF
        FFFFFFFFFDEF3D1F0F0F2E7375777777777515221F3DFAFFFFFFFFFFFD3D1F22
        7684858D8D8B7B777777756B2E223DF0FFFFFFF8481F31A3C7C9CACBC9C6C38C
        8C7877771D0F1F48FFFFFFF03D22AAD1D1D1A9A9D0CCC9C6C3888878776B2E1F
        BAFDF83D1F98D2D6D6D2100070D4CCCCC7C68C7877771D1F48FDFA3D1FAED7D8
        D8DA01000082D6CECCC6C38C7877732E1FBE4B1F9EDAD9DBE20E0000000BD7D2
        CECCC78C8877752E1FBA4B3D9CDBE0E26F000011010071D7D2CCC9C68C78776B
        1F484820AEE2E7E7E3030BE3980001D6D7D4CCC78C88776B2248483DE3E2EBEE
        F2F2F2ECE16E000AD7D6CCC9C6887877223D4B20E3E9F2F4F5F6F5F4F2E90E00
        16D6D4C9C688776B1F5FBB3DB2EBF2F6F7FAF7F6F2EBDC100067D4C9C68C7875
        1F5FBB20B5EBF4F6FCFFFAF6F3EBE8DC160069CCC68C750F20F8F83D3DE4F2F6
        F7FCF7F6F2ECE8E0D77D021DC78C881F3DC1FA6420B6F2F4F6F6F6F4EEEAE2DB
        D8D6CE75C6760F20BBF9FDF8483DB3EEF3F4F3F2EBE8E2D9D7D2CFC9C47B1F3D
        F0FFFDFDBB3D20E9ECECEBE9E8E2DBD7D6D5CCC3921F3DEFFAFFFFFFF8C13D3D
        59E7E8E2E0DBD8D7D2CFC9A31F3D66FDFDFDFFFDFDFDBB3D2021E3DBD9DAD7D6
        CE931F3D48BEF8FDFDFFFFFFFDFDF8C1BA483D202020201F20203D48F8FDFDFD
        FFFFFFFFFFFFFDFDFAF8BB48484848486466BAF8FDFDFDFDFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F000000010000000000005DA026006DA7
        3A006CA83B006DA83C007FB3540081B0540084B359008CB563008CB965008EBC
        690092B8690093BB6E0091BD6C0092BC6D0096BD72009DBF7A00A2BF7E009CC4
        7C00A5C58600A8C18500AFC48D00A8C88C00A9CA8C00B3CC9800B5CB9900B6C9
        9900B5CC9A00B4CE9B00BAC99A00B9CB9D00BCCB9F00BDC89C00BFCBA100BBD1
        A400DBBFA300DDBFA300DDBFA400C1CCA300C0CDA400C5CDA700C5CEA900C0D8
        AB00C7D4B100C7D9B500CDDEBD00DCC0A500DCC2A600DCC1A700DCC3A800DDC2
        A800DCC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
        AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
        AF00DEC8AF00D2CFB200D6CFB400DDC7B000DEC9B200DEC9B300DFC8B200DDC8
        B000DECAB500DFCDB700DFCEB700DDCDB600DFCCB800DFCFB900D3D3B800D1D6
        BB00D2D6BC00D5D3B800D6D1B800D4D4BB00D1D9BE00D9D4BC00DED3BE00E0C5
        AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9B300E2CA
        B400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CBB800E0CFB800E1CF
        B900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CEBB00E1CCB900E0CFBC00E1CE
        BC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CE
        BB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1BB00E1D0BA00E0D1BC00E0D1
        BD00E0D1BC00E1D2BD00E0D2BF00E0D2BE00E2D1BC00E2D2BE00E7D1BE00E7D2
        BF00E6D0BE00D3DAC000D2DDC200D5D9C000D4DDC400DAD6C000DDD5C000DED6
        C300DFDACA00D9E0CC00DCE1CF00DEE8D300E1D1C000E1D3C000E3D1C100E2D2
        C100E2D3C000E1D4C100E1D4C200E3D5C200E2D4C000E1D5C400E2D5C400E2D6
        C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5
        C200E4D7C600E5D7C500E6D6C900E4D7C700E0D9C900E3D8C800E3D8C900E3D9
        CB00E2DACA00E0DDCE00E2DCCE00E5D8C900E5D9CA00E5DACB00E7DACB00E6D8
        CA00E4DACC00E4DACD00E4DBCF00E7DBCD00E6DCCE00E8D3C100E8D4C300E8D4
        C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9
        CB00E8DCCF00E5DCD000E5DDD100E7DDD000E6DED300E6DDD300E6DED400E7DF
        D500E3E1D500E5E0D500E7E0D700E6E2D700E6E3D900E7E6DD00E8E0D500EFE1
        D500E8E1D900E8E2DA00E9E3DA00EAE4DD00EBE5DD00EBE5DF00F0E2D600F0E2
        D700F0E3D700F0E1D600F0E3D800F3E8DF00E9E7E000EBE6E000EAEBE300E8ED
        E100EDE9E500EEEAE700ECEDE600EEEBE800EFECE900F3E9E000F4EAE200F5EB
        E300F4EAE100F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F3
        F100FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF0C97A7AC9F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF623231322222223
        10225AFAFFFFFFFFFFFFFFFFFFFFFF882222232323242324232322135FFEFEFF
        FFFFFFFEFEFA22222F245A7BC3CACAC9C45E23232323FCFFFFFFFFFEFE232222
        96A3ACCF1F91DFDFDFE5C124232223FCFEFFFFFE5B224E96A3B1BCD400002BEB
        EBEBEAE35E231378FEFFFFFA135AC398A3B1CF20000000EDF7F7EEEAE35A2322
        E5FEFE2423C7A89CA5B192000000001BFCF9F7EBDFC5232324FEFE225DC99696
        A5BB060000D70200E9FAF7EBDFE35B2322F6C922ACAC709CA3BC921393ED8C00
        03F9F7EEE7DA7B2313E4C122AC9C7084A3B1CFD4D7EAED2B000FEEEADFDAC35A
        237A7422CF814F969F92BCD0DAE6EAED150021DFDACFC92423747A22DB844C58
        99A3BBBCD4DAD7E6D71D0028D4BCAC5D225AC322DDA94D6B96A3A5BCBCD0D4DB
        DAD4280020BC982422C5E522CFCA474C7084A3AEBBBCCFCFD0CFCF9106439641
        13E3FA13CFE746644F58969FA3B1B1B4BBBC92B1A39F632323FAFC5A24EBC846
        644F7096969F9FA3A3A3A39F99966F2223FAFEE522E1EE7F424A4C705896969F
        969F9684967B2413F4FDFEFA5F22DAF07F42644D4C6B707070708170976E2324
        FCFEFEFEFA2222EAECAB424646644C4C4D4F859C452223FAFEFEFEFEFEFA2322
        B9E7DEB5836868809CADA34F2222F4FEFEFEFEFEFEFEFA5A132FCDD6D5D3CCCB
        B174231362F6FCFEFEFEFFFEFEFEFEFCF65D221323232222142323E5FCFEFEFE
        FEFEFEFEFEFEFEFEFEFCF6E3BF5F74BFE3F6F6FCFEFEFEFEFEFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alRight
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsPost1
      DockOrientation = doNoOrient
    end
    object ElSpeedButton16: TElSpeedButton
      Left = 1482
      Top = 1
      Width = 29
      Height = 35
      PullDownBtn = mbLeft
      Flat = True
      NormalImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000C99D9400CA9E
        9500CAA09700CBA19800CBA29900CCA39A00CDA79D00CEA99F00CFA9A100CFAA
        A100CFABA100CFABA200CFACA200D0ABA400D0ADA300D1AFA300D1ADA500D0AE
        A400D1AFA700D2B1A500D2B1A700D2B3A600D3B3A900D3B3AB00D3B4AA00D4B5
        AB00D4B6AC00D4B6AE00D6B7B000D6BAB200D7BEB200D7BCB400D8BFB000D8BF
        B400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D9C1B100D8C0B500D9C2B500D9C2
        B700DBC7B500DBC7B700D9C1B800DAC4B900DBC7BA00DBC7BC00DFCAB000DFCB
        B000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCCB400DFCDB600DFCE
        B700DCC9BF00DDCBBC00DDCBBE00DDCCB800DECDBB00DFCEB800DFCFB800DFCF
        B900DECDBF00DFCFBF00DDCCBF00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CC
        B200E1CEB500E4CEB300E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0
        B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1
        BA00E0D1BC00E0D1BD00E1D1BC00E0D2BD00E0D2BF00E1D3BF00E0D2BE00E3D3
        BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4
        BC00E7D4BE00E8D4BD00DDC7C100DFC7C200DDC9C300DFCBC500DFD1C500E0D3
        C000E1D3C000E1D3C300E0D3C600E1D4C100E0D4C100E1D4C200E1D5C300E2D5
        C300E3D4C100E1D4C600E1D5C600E1D6C400E2D6C400E3D7C500E2D6C700E2D7
        C600E2D7C700E1D4C400E4D6C200E6D5C100E3D7C600E0D0C800E2D3CD00E2D6
        C900E7D8C600E3D9CA00E3DACB00E3DACE00E3D8CE00E5DACB00E5DBCC00E4DB
        CE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9
        C400EBD9C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DC
        CC00E9DDCF00EADDCD00EBDECD00EDDDCA00ECDDCA00EDDFCD00EDDECD00EDDF
        CE00ECDFCF00EEDFCE00ECDDCC00E6D4D000E4DAD000E7D8D400E6DBD600E5DC
        D000E5DDD100E5DED300E7DED200E6DDD500E6DFD500E6DFD700E7DFDA00E7DE
        D800E9DED100E8DFD300EADFD200E8DDD900EEE0CF00E7E1D700E6E0D600E7E2
        D900EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E9E2DD00EBE1
        DD00E9E4DC00EAE5DF00EAE5DE00E9E4DD00EDE0DE00ECE4DB00F0E3D400F0E4
        D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E000EAE4
        E000ECE7E100EEE9E300ECE9E400EDE9E500EDEAE600EEEAE700EEEAE500EFEC
        E900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
        EB00F2ECEA00F2EFED00F1EEEC00F3F1EF00F7F0E800F7F1E900F7F1EA00F8F2
        EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F6F2F100F7F6F500FAF5F000F9F7
        F700F8F5F400FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFEF1D5BEBED5F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB9A231523232323
        23239AFBFFFFFFFFFFFFFFFFFFFFFEBE2323464B4846232323232315BEFEFEFF
        FFFFFFFFFFFD53234A4A585D55564F39494623232369FDFFFFFFFFFFFF6B2359
        757875755F715D5B554A4746232353FEFFFFFFFEAB23847E86817F817D78715E
        60554E48232323BEFFFFFFFB23588B8C918C918C8B827D78715D563949232323
        F2FEFE9A238BB193B2B22D1D89908B80715E5D55394523239AFFFE238AB2B6B3
        C0270000068D932702022A604F35232323FBE723B1B3BFC1CA6F110000171A00
        00000A5E5A4E484615E7D445B6C1CDCCD7D7D81C0000000007437C725D4F4A46
        23D3BE51C1CCD7DCDEDEDED706000016939182785E564A4623ABBE52CDD7DEE8
        ECEBEC6F000000006FB28B7E725D4E4923A5D549CBDCE8EBF5F5DD0000120300
        012D8B7F75604E4623D3F123D8DFECF5F7FCAD0002D9B00500001D7F76604F34
        23E3FC23CADEECF5FCFEF6052DDED8B3211B808176604F2323FDFE9569DEECF5
        F7FCF7DDBDDFD7C8C0B38C8277604F2395FDFEF323CBE1EDF5F5F6EBE8DDD8C1
        B3B28C8175604723F8FFFFFDAB46E0E1ECECECE1DDD7CDBFB3938B7D715B23A5
        FEFEFFFFFF6B4BDCDEDEDFDDD7CBC1B6B38D82785A2353FDFEFFFFFFFFFD6945
        CAD7D7D8CDC1B6B3938B7D602353FDFEFEFFFFFFFEFEFFA52362BFC1B7B6B393
        8B7A2323ABFDFEFFFFFFFFFFFFFFFFFEF89A2323454A4A4623236BF3FFFFFFFF
        FFFFFFFFFFFFFEFEFFFEFDE7D5BEBED5E7FCFDFFFFFFFFFFFFFF}
      DisabledImage.Data = {
        AA040000424DAA040000000000006A0200002800000018000000180000000100
        08000000000040020000610F0000610F00008D00000000000000AAAAAB00ABAB
        AC00ACACAD00AEAEAF00AFAFB000B3B3B400B4B4B500B5B5B500B5B5B600B6B6
        B700B7B7B800B9B9B900B9B9BA00BABABA00BCBCBD00BDBDBD00BDBDBE00BEBE
        BE00BEBEBF00BFBFC000C0C0C100C1C1C100C1C1C200C4C4C500C5C6C600C7C7
        C800C8C8C900C9C9CA00CACACA00CACACB00CBCBCB00CDCDCD00CDCDCE00CECE
        CE00CECECF00CFCFCF00CFCFD000CFD0D000D0D0D100D0D1D100D1D1D200D1D2
        D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
        D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
        D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
        DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
        DE00DEDEDE00DEDFDF00DFDFDF00DFDFE000DFE0E000E0E0E000E0E0E100E0E1
        E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4
        E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7
        E700E7E7E800E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEA
        EB00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
        EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
        F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
        F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
        FC00FDFDFD00FEFEFE00FFFFFF008C8C8C8C8C8C8C8C8B857C75757C858B8C8C
        8C8C8C8C8C8C8C8C8C8C8C8C896F53443B37353841536F898C8C8C8C8C8C8C8C
        8C8C8C764E3E322E2E2B26242222334B768C8C8C8C8C8C8C8C8B67463A373737
        3532302B252420223E678B8C8C8C8C8C8C67443F4040403F3D3A373530292522
        2038678C8C8C8C8C754944474A4A4A4745423F383731292522203E758C8C8C89
        4E4B4F52545454524F4C47413B3731292520204B898C8C6F4E53585B5B582118
        4C544F4A3E37373229221F336F8C8B53585A6161641B00000654581E02022437
        30252020518B844E5D6064686B310B0000131600000009383329222041847C54
        64666E7072726C15000000000635463E37302520387B7657666E727576767674
        0400000E57544C4238312924337576586E72767A7C7E7C30000000013F584F45
        3D352C2433757B5870757A8081837000000D020002274F473F372C25387B8453
        71777C818588420001645603000018484037302541848B536F777E83888C7A02
        1C767254181347483E373029538B8C6F60777C8185888564597772696259544A
        3E3730376F8C8C8951737A80818381807A757068615B52473E37304B898C8C8C
        7556767A7C7E7C7A76726E6461584F453B3344758C8C8C8C8C675D7577777775
        726E66615B544C423A41678C8C8C8C8C8C8A6756707272706E66645E584F4742
        46678A8C8C8C8C8C8C8C8C75515E6B6864615E58524A474E758C8C8C8C8C8C8C
        8C8C8C8C896F56535656534F4B536F898C8C8C8C8C8C8C8C8C8C8C8C8C8C8B84
        7B75757C848B8C8C8C8C8C8C8C8C}
      MouseInImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000AB716A00AC75
        6E00AE777000AF797200B3827900B4837B00B5847D00B5857E00B6877F00B788
        8100B98B8300B88A8100B98D8400BA8D8700BC908600BC928A00BD928C00BE95
        8A00BF978E00BE968D00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0D600AEC1
        D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2CB00B6C3
        CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5
        D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CBDB00A7C9
        EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACAE900ADCE
        EF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9E000B4CE
        E600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0
        ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5
        F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C099
        8D00C0979200C19A9200C39F9800C5A19B00CAAAA000CAACA200CAACA400CCAE
        A000CFB3A300CDB0A400CEB3A800CEB0AB00CFB2AD00D2B9AE00D4BDAD00D1B6
        B100D1B9B100D2B9B400D5BFB300C3C3BE00C7C3BB00C8C5BD00C8C6BF00D7C2
        B300D7C2B500D7C2BB00D7C4BD00D2C8B700D6C9B600D7CDBD00D9C6B300D8C4
        B700DBC9B500DECCB400DFCDB600DFCEB700DAC8BA00DAC9BD00DFCEB800DFCF
        BA00DCCCBA00DFD1BD00E0CFB900E0CFBA00E0D0BB00E0D1BC00E0D1BD00E0D2
        BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
        C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1D300CAD2D700C9D3
        DB00CFD7DD00CCD5DC00D3CDC200D7CFC000DAC3C000D9C7C100DECAC700DDCF
        C100D7D0C300D5D0C700D6D4CD00DFD1C100DED0C200DFD2C300DED0C500D8D3
        C900DAD5CC00DFD3C900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDB
        EA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3
        F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E0D3C500E1D4
        C100E1D4C200E1D5C300E0D4C500E2D7C700E2D7C600E2D6C500E0D3CE00E1D7
        C800E2D7CB00E1D7CD00E3D9CB00E3DBCF00E3DACC00E4DACD00E4DCCF00E2D4
        D100E4D4D200E5D7D500E3D9D300E5DBD600E5DCD000E5DED300E5DED500E6DD
        D900E7E1D700E6DFD500E7E2D900E8E2DA00E9E2DD00E9E4DC00EAE5DF00E8E5
        DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EBE6E200EEE6E500EDE9
        E500EDEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBE900F1EDEA00F1EE
        EB00F1EEEC00F2EFED00F4F0EE00F4F2F000F5F3F100F6F3F200F7F6F500F2F8
        FD00F3F8FD00F6FAFE00F9F7F600FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDBB583F3F56BBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB32161515181515
        15323CF9FFFFFFFFFFFFFFFFFFFFFD3F3215181423642323141418153CF9FDFF
        FFFFFFFFFDED32151414237576817B7878685E181532FBFFFFFFFFFFFD321518
        778383BFBF8A8A847D7B7664141532EEFFFFFFF93C15269CC3C6C6C9C3C3C38A
        8A877D7B6214153CFFFFFFEE3218A9CECECECDCCCCC6C6C3BF8A837D7B682315
        B7FDF9321593CDD6D7D0645DC4D0C9C683838A877D7660153CFDFB3215ACD7D8
        DA5E000004CCD0630101688A7D7D752316BB3F1697D7DCDCDF6C0B0000135B00
        00000B8A8A7D781415B73F3298DCDFE0E7E7E15B000000000476C6BF8A7D7B68
        153C3C16ACE1E6E9EAEAEAE70300000FCED0C6C38A817B6E153C3C32E2E1EAEC
        ECF3EC6B0000000075D0CCC3C18A7B7618323F16E2E9ECF3F6F6DE00000C0100
        0064C9C6C18A7B6E1551B832B0E9F1F5F8FB9E0000D9AC0300005DC6C18A7D76
        1556B816B3EAF2F8FCFFF20260EAE7CB5E5BC6C6C38A761416F9F93232E3ECF5
        FCFCFCDED3EAE7DCD8D7CEC6C38A811532BEFB5616B4ECF3F6F7F6F3ECE9E1DC
        D8D0CEC6C1771416B8F9FDF93C32B1F0ECF3ECECE9E7E1DADBD0CCC3C1771532
        EEFDFFFBBB3216E9EAEAEAE8E6E1DCD7D7CEC6C38D1532EDFBFFFFFDF9BE3232
        4EE7E6E1DFDCDBD7D0CCC69C153258FBFDFFFFFDFDFDB8321616E2DCDADBD7D0
        CE2515323CBBF9FDFFFFFFFDFDFDF9BBB73C3216161616151632323CF9FBFDFF
        FFFFFFFFFFFFFDFDFDF9B83C3C3C3C3C3FB7B8EEFDFDFFFFFFFF}
      PressedImage.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000610F0000610F00000001000000000000A96F6800AB72
        6B00AD756F00AF797200B17C7600B4827B00B5847D00B5847E00B5857E00B787
        8100B7888100B8898300B88B8300B88A8400BA8D8500BB8D8800BB908900BC91
        8A00BD928C00BE958F00BF968F00BF969100C0989200C19A9300C39C9700C39F
        9700C3A09600C5A09A00C6A29D00C7A59D00C8A39F00C9AAA300CBADA400CBAC
        A700CCAEA700CCAFA800CEB3AD00CFB5AC00D1B8AD00D5BDAE00DBBFA300DDBF
        A300DDBFA400D1B8B000D2B9B100D2B9B000D2B9B200D3BBB300D2B8B400D3BA
        B500D4BDB700D5BDB900DCC0A500DCC1A700DCC2A600DBC4AE00DCC3A800DDC2
        A800DDC3A900DDC3AA00DEC3A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4
        AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7
        AF00DEC8AF00D5C0B400D7C2B900D7C0BC00DBC5B000DDC7B000D8C5BA00D9C6
        BB00DBC7B900DDC8B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCE
        B700DAC9BB00DAC9BF00DFCCB800DFCEB900DFCEBE00E0C5AB00E0C5AC00E0C6
        AD00E0C6AF00E1C7B100E2C8B100E2C8B200E2C9B300E2CAB400E3CAB600E1CB
        B700E0CDB500E0CDB600E0CEB700E0CFB700E2CBB800E0CFB800E1CFB900E0CF
        BB00E3CCB900E2CDBA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CF
        BD00E3CFBE00E4CBB800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CF
        BD00E6CFBE00E4CFBE00E0D0BA00E1D0BB00E0D0B900E0D1BC00E0D1BD00E0D0
        BC00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2
        BF00E5D0BF00E7D1BE00E7D2BF00E6D0BD00DDCBC300DCCCC000DDCEC700DECF
        C700DECCC900DFCFCA00DFD1C500DFD2C500DFD2C700DFD0C900E1D1C000E1D3
        C000E3D1C100E3D1C000E2D2C100E2D3C000E0D3C400E1D4C100E1D4C200E2D4
        C100E3D5C200E1D5C400E1D5C600E1D5C700E2D5C400E2D6C500E3D6C500E2D6
        C600E2D7C600E2D7C700E3D7C600E3D7C700E5D3C300E4D5C200E4D7C700E5D7
        C500E0D3C900E0D0CD00E1D5C900E2D5C800E2D7CB00E1D5CE00E2D7CD00E6D6
        C900E4D8C700E3D8C900E3D8C800E3D9CB00E3D8CD00E3DACC00E5D8C900E4D9
        CB00E6D8CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCF00E7DBCD00E8D3
        C100E8D4C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7
        C800EBD8C900EBD9CB00E8DCCF00E4D9D000E4DBD100E4DAD500E5DDD100E7DE
        D300E5DCD700E7DFD500E7DED700E7E0D800E8E0D400EFE1D500E9E3DB00E9E2
        DE00EAE4DC00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8DF00ECE6
        E300F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
        EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFDF3DB8181DBF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA5F1A0E291A291A
        1A1460FAFFFFFFFFFFFFFFFFFFFFFD931429297C5F6A5F645F5F280E7FFDFFFF
        FFFFFFFFFDFB291A646A7FB7D8CBE7DAD66A5F291A29FCFFFFFFFFFFFF292964
        94B7CBDCE6EEEAF2F2EECB645F1A29FDFDFFFDFD7F1A868EB9C2D0E04E4BF2F1
        F6F5F5EC6A5F1A7FFDFFFFFA147CD8B9B2C7E01D00001AF9F950050CD65F5F14
        F9FDFD4329DAB98EC2C7C7200400004B200000001ADA29295FFDFD1494D08E8E
        C2C7E6E5E00A000000000CA7EAEE6A291AFBF51AE6B98EA7B2C7E0E8F1E90200
        001DF9F1EAEE905F14F0DA29CBB786A7B2C7E0E6EA2400000005E8F1EAE8B96A
        297F7C29E68E868EB2C7E0E09800000C0000059EEAE6C229287C7F28EA866D8E
        8EB2C7E01F0002E25000000026E0C24A285FD828EAAA6D868EB2B2C74B001FE8
        E55B1313C7C78E6A1AD6F01AF0D06A6D86A7B2B3C7269DE0E2E0E0E0C7C28E6A
        1AEEFB1AE6EA4A6A868B8BB2B2C7C7C7C7C7C7C7B2B26D5F14FCFC5F43F4C74A
        5959878BA7ABB2B3B3B2B2AB8E8E862929FCFDF914E8F6864A5959868B8BA7A7
        A7A7A78E8E8E5F14F9FDFDFC7F28E8F2864A6A5959868787878786878E861A7C
        FBFDFDFDFC2828F1F1C253535359595959598B8E6A2829FBFDFDFFFDFDFB281A
        EEEAEAC28E6D8686ABB2B2861A29F9FDFDFDFFFDFDFDFC7F1436E6E8E5E6E0E0
        C78628147FFBFCFDFDFFFFFDFDFDFDFCF9611A1A2828281D1A1A29F9FCFDFDFF
        FFFFFFFFFFFFFDFDFDFCFBEED66A7CD6F0FBFBFCFDFDFDFFFFFF}
      AutoSize = False
      TransparentColor = clBlack
      Align = alRight
      Color = clBtnFace
      ParentColor = False
      Action = PrepackingDM.ItemsCancel1
      DockOrientation = doNoOrient
    end
    object Button1: TButton
      Left = 266
      Top = 2
      Width = 129
      Height = 31
      Action = PrepackingDM.atnSelectBatch
      TabOrder = 0
    end
  end
  object PageTakeItems: TRzPageControl
    Left = 0
    Top = 321
    Width = 1542
    Height = 477
    ActivePage = tbsCreditItems
    ActivePageDefault = tbsCreditItems
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShowShadow = False
    TabColors.Shadow = clWhite
    TabIndex = 0
    TabOrder = 3
    TabStyle = tsRoundCorners
    object tbsCreditItems: TRzTabSheet
      Color = clWhite
      Caption = 'Details'
      object dbgPrepackingItems: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1540
        Height = 450
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PrepackingItem_ID'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = False
        TabOrder = 0
        ArrowsColor = clNavy
        BandColor = clBackground
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = PrepackingDM.dsPrepackingItems
        Filter.DropDownCount = 16
        Filter.Criteria = {00000000}
        GridLineColor = clInactiveCaptionText
        GroupPanelColor = 16311512
        GroupPanelFontColor = clActiveCaption
        GroupNodeColor = 16311512
        GroupNodeTextColor = clActiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        IndentDesc = 10
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        RegistryPath = '\Software\RxSolution\1.2\Grids\Prepacking\dbgPrepackingItems'
        RowFooterColor = clHighlight
        RowFooterTextColor = clWindow
        Anchors = [akLeft, akTop, akRight]
        object dbgPrepackingItemsNSN_str: TdxDBGridMaskColumn
          Caption = 'NSN'
          DisableEditor = True
          Visible = False
          Width = 167
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NSN_str'
        end
        object dbgPrepackingItemsECN_str: TdxDBGridMaskColumn
          Caption = 'ECN'
          DisableEditor = True
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ECN_str'
        end
        object dbgPrepackingItemsICN_str: TdxDBGridMaskColumn
          Caption = 'ICN'
          DisableEditor = True
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ICN_str'
        end
        object dbgPrepackingItemsDescription_str: TdxDBGridColumn
          Caption = 'Description'
          DisableEditor = True
          Width = 363
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description_str'
        end
        object dbgPrepackingItemsBatchNumber_str: TdxDBGridColumn
          Caption = 'Batch Number'
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BatchNumber_str'
        end
        object dbgPrepackingItemsExpiry_dat: TdxDBGridDateColumn
          Caption = 'Expiry'
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Expiry_dat'
        end
        object dbgPrepackingItemsAvailable: TdxDBGridColumn
          Caption = 'On Hand'
          DisableEditor = True
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Available'
        end
        object dbgPrepackingItemsActualQty_int: TdxDBGridColumn
          Caption = 'Qty to use'
          DisableEditor = True
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QtyUsed_dbl'
        end
        object dbgPrepackingItemsSourcePortion_dbl: TdxDBGridColumn
          Caption = ' SKU/Pack'
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SourcePortion_dbl'
        end
        object dbgPrepackingItemsPackCost_mon: TdxDBGridCurrencyColumn
          Caption = 'Pack Cost'
          DisableEditor = True
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PackCost_mon'
          Nullable = False
        end
        object dbgPrepackingItemsExtendedCost_mon: TdxDBGridCurrencyColumn
          Caption = 'Extended Cost'
          DisableEditor = True
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ExtendedCost_mon'
          Nullable = False
        end
        object dbgPrepackingItemsNotFromBulk_bol: TdxDBGridCheckColumn
          Caption = 'NFB?'
          MinWidth = 20
          Width = 36
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NotFromBulk_bol'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dbgPrepackingItemsRemainingSKUActual_dbl: TdxDBGridColumn
          Caption = 'Rem. Actual SKU'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RemainingSKUActual_dbl'
        end
        object dbgPrepackingItemsRemainingSKUCalc_dbl: TdxDBGridColumn
          Caption = 'Rem. SKU Calc'
          DisableEditor = True
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RemainingSKUCalc_dbl'
        end
      end
    end
    object tbsCredit_Remarks: TRzTabSheet
      Color = clWhite
      Caption = 'Notes'
      object RzDBNotesField: TRzDBMemo
        Left = 0
        Top = 0
        Width = 1540
        Height = 450
        Align = alClient
        DataField = 'Remarks_mem'
        DataSource = PrepackingDM.dsqryPrepackingWorker
        TabOrder = 0
        DisabledColor = clWhite
        FrameColor = clWhite
        FrameHotTrack = True
        FrameVisible = True
      end
    end
    object tbsCreditHistory: TRzTabSheet
      Color = clWhite
      Caption = 'Item Edit History'
      object dxDBPrepackingHistory: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1540
        Height = 450
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PrepackingHistory_ID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        ArrowsColor = clNavy
        BandColor = clBackground
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = PrepackingDM.dsqryItemEditHisory
        Filter.Active = True
        Filter.DropDownCount = 16
        Filter.Criteria = {00000000}
        GridLineColor = clInactiveCaptionText
        GroupPanelColor = 16311512
        GroupPanelFontColor = clActiveCaption
        GroupNodeColor = 16311512
        GroupNodeTextColor = clActiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        IndentDesc = 10
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoShowHourGlass, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        RegistryPath = '\Software\RxSolution\1.2\Grids\Prepacking\dxDBPrepackingHistory'
        RowFooterColor = clHighlight
        RowFooterTextColor = clWindow
        object dxDBPrepackingHistoryPrepackingHistory_ID: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 148
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PrepackingHistory_ID'
        end
        object dxDBPrepackingHistoryPrepacking_ID: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Prepacking_ID'
        end
        object dxDBPrepackingHistoryPrepackingItem_ID: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PrepackingItem_ID'
        end
        object dxDBPrepackingHistoryDescription_str: TdxDBGridMaskColumn
          Caption = 'Description'
          DisableEditor = True
          Width = 443
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description_str'
        end
        object dxDBPrepackingHistoryDate_dat: TdxDBGridDateColumn
          Caption = 'Date'
          DisableEditor = True
          Width = 352
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Date_dat'
        end
        object dxDBPrepackingHistoryProductCode_ID: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ProductCode_ID'
        end
        object dxDBPrepackingHistoryType_str: TdxDBGridMaskColumn
          Caption = 'Type'
          DisableEditor = True
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Type_str'
        end
        object dxDBPrepackingHistoryUser_ID: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'User_ID'
        end
        object dxDBPrepackingHistoryUserName_str: TdxDBGridMaskColumn
          Caption = 'User Name'
          DisableEditor = True
          Width = 307
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UserName_str'
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 872
    Top = 87
    object AddSingleItem1: TMenuItem
      Action = PrepackingDM.atnAddSingleItem
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Action = PrepackingDM.atnDeleteItem
    end
    object RemoveAllItems1: TMenuItem
      Action = PrepackingDM.atnDeleteAllItems
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object atnSelectBatch1: TMenuItem
      Action = PrepackingDM.atnSelectBatch
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object PrePost1: TMenuItem
      Action = PrepackingDM.atnPrePostandClose
    end
  end
  object ActionList1: TActionList
    Left = 904
    Top = 112
    object atnColSelect: TAction
      Caption = 'atnColSelect'
      ShortCut = 16458
      OnExecute = atnColSelectExecute
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 872
    Top = 120
    object Print1: TMenuItem
      Action = PrepackingDM.atnPrintMainReport
    end
  end
end
