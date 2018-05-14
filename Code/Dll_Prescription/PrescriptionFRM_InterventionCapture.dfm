object frmRXIntervention: TfrmRXIntervention
  Left = 353
  Top = 312
  BorderStyle = bsDialog
  Caption = 'Interventions'
  ClientHeight = 115
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 79
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object lblDRPProblem: TLabel
      Left = 1
      Top = 30
      Width = 54
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Problem:'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDRPOutcome: TLabel
      Left = 1
      Top = 52
      Width = 54
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Outcome:'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object regRegimin: TRzDBLabel
      Left = 0
      Top = 0
      Width = 567
      Height = 28
      Align = alTop
      Color = 15448477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      DataField = 'DspProduct_Str'
      DataSource = FRM_RXItem
    end
    object Edit1: TEdit
      Left = 584
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object regDRPProblem: TRzDBLookupComboBox
      Left = 56
      Top = 30
      Width = 508
      Height = 21
      Ctl3D = False
      DataField = 'DspInterventionProblem_Str'
      DataSource = FRM_RXItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'drp_ProblemCode_Str'
      ListField = 'drp_ProblemDescription_Str'
      ListSource = FRM_DRPProblem
      NullValueKey = 16462
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      FrameController = frmRX.fcRXHeader
    end
    object regDRPOutcome: TRzDBLookupComboBox
      Left = 56
      Top = 52
      Width = 508
      Height = 21
      Ctl3D = False
      DataField = 'DspInterventionOutcome_Str'
      DataSource = FRM_RXItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'drp_OutcomeCode_Str'
      ListField = 'drp_OutcomeDescription_Str'
      ListSource = FRM_DRPOutcome
      NullValueKey = 16462
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      FrameController = frmRX.fcRXHeader
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 79
    Width = 567
    ButtonColor = 16311512
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    ShowDivider = True
    ShowGlyphs = True
    ShowCancelButton = False
    Color = 16311512
    TabOrder = 1
  end
  object FRM_RXItem: TDataSource
    DataSet = dmRX.qryRXItem
    Left = 8
    Top = 136
  end
  object FRM_DRPProblem: TDataSource
    DataSet = dmRX.qryInterventionProblem
    Left = 136
    Top = 136
  end
  object FRM_DRPOutcome: TDataSource
    DataSet = dmRX.qryInterventionOutcome
    Left = 104
    Top = 136
  end
end
