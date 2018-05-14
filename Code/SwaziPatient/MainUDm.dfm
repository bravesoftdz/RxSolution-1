object MainDm: TMainDm
  OldCreateOrder = False
  Left = 543
  Top = 246
  Height = 339
  Width = 256
  object PatientMainConnection: TADOConnection
    CommandTimeout = 240
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=rxnew;Data Source=sifisom'
    ConnectionTimeout = 180
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 20
  end
  object TblSystem: TADOTable
    Connection = PatientMainConnection
    CursorType = ctStatic
    TableName = 'TblSystem'
    Left = 48
    Top = 80
    object TblSystemSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object TblSystemDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object TblSystemFinancialYear_str: TWideStringField
      FieldName = 'FinancialYear_str'
      Size = 4
    end
    object TblSystemFYStart_dat: TDateTimeField
      FieldName = 'FYStart_dat'
    end
    object TblSystemFYEnd_dat: TDateTimeField
      FieldName = 'FYEnd_dat'
    end
    object TblSystemDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object TblSystemAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 150
    end
    object TblSystemAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 150
    end
    object TblSystemAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 150
    end
    object TblSystemCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 150
    end
    object TblSystemPostalCode_str: TWideStringField
      FieldName = 'PostalCode_str'
      Size = 15
    end
    object TblSystemPhone_str: TWideStringField
      FieldName = 'Phone_str'
      Size = 25
    end
    object TblSystemFax_str: TWideStringField
      FieldName = 'Fax_str'
      Size = 25
    end
    object TblSystemDistrict_str: TWideStringField
      FieldName = 'District_str'
      Size = 150
    end
    object TblSystemRegion_str: TWideStringField
      FieldName = 'Region_str'
      Size = 150
    end
    object TblSystemContact_str: TWideStringField
      FieldName = 'Contact_str'
      Size = 150
    end
    object TblSystemProvince_str: TWideStringField
      FieldName = 'Province_str'
      Size = 150
    end
    object TblSystemType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 150
    end
    object TblSystemMainDepot_str: TWideStringField
      FieldName = 'MainDepot_str'
      Size = 7
    end
    object TblSystemReportBuilderFile: TStringField
      FieldName = 'ReportBuilderFile'
      Size = 255
    end
    object TblSystemSupplierDef_ID: TIntegerField
      FieldName = 'SupplierDef_ID'
    end
    object TblSystemAccountDef_ID: TIntegerField
      FieldName = 'AccountDef_ID'
    end
    object TblSystemDemanderDef_ID: TIntegerField
      FieldName = 'DemanderDef_ID'
    end
    object TblSystemReportStart_dat: TDateTimeField
      FieldName = 'ReportStart_dat'
    end
    object TblSystemReportEnd_dat: TDateTimeField
      FieldName = 'ReportEnd_dat'
    end
    object TblSystemprovincialLogo_img: TBlobField
      FieldName = 'provincialLogo_img'
    end
    object TblSystemCohortInterval: TIntegerField
      FieldName = 'CohortInterval'
    end
    object TblSystemCohortLength: TIntegerField
      FieldName = 'CohortLength'
    end
    object TblSystemTemp01: TWideStringField
      FieldName = 'Temp01'
      Size = 10
    end
    object TblSystemTemp02: TWideStringField
      FieldName = 'Temp02'
      Size = 10
    end
    object TblSystemTemp03: TWideStringField
      FieldName = 'Temp03'
      Size = 10
    end
    object TblSystemTemp04: TWideStringField
      FieldName = 'Temp04'
      Size = 10
    end
    object TblSystemTemp05: TWideStringField
      FieldName = 'Temp05'
      Size = 50
    end
  end
  object dsSystem: TDataSource
    DataSet = TblSystem
    Left = 144
    Top = 80
  end
  object Rzlauncher1: TRzLauncher
    Action = 'Open'
    Timeout = -1
    Left = 144
    Top = 19
  end
  object tblSystemUser: TADOTable
    Connection = PatientMainConnection
    CursorType = ctStatic
    TableName = 'tblSystem_User'
    Left = 48
    Top = 144
    object tblSystemUserUserID: TGuidField
      FieldName = 'UserID'
      FixedChar = True
      Size = 38
    end
    object tblSystemUsertitle_str: TWideStringField
      FieldName = 'title_str'
      Size = 15
    end
    object tblSystemUserfirstName_str: TWideStringField
      FieldName = 'firstName_str'
    end
    object tblSystemUserlastName_str: TWideStringField
      FieldName = 'lastName_str'
    end
    object tblSystemUserinitials_str: TWideStringField
      FieldName = 'initials_str'
    end
    object tblSystemUserposition_str: TWideStringField
      FieldName = 'position_str'
    end
    object tblSystemUserrank_str: TWideStringField
      FieldName = 'rank_str'
      Size = 30
    end
    object tblSystemUseruserName_str: TWideStringField
      FieldName = 'userName_str'
      Size = 10
    end
    object tblSystemUserpassword_str: TWideStringField
      FieldName = 'password_str'
      Size = 500
    end
    object tblSystemUsertelephone_str: TWideStringField
      FieldName = 'telephone_str'
      Size = 50
    end
    object tblSystemUsercellular_str: TWideStringField
      FieldName = 'cellular_str'
      Size = 50
    end
    object tblSystemUseremail_str: TWideStringField
      FieldName = 'email_str'
      Size = 50
    end
    object tblSystemUseroffice_str: TWideStringField
      FieldName = 'office_str'
      Size = 50
    end
    object tblSystemUserbuilding_str: TWideStringField
      FieldName = 'building_str'
      Size = 50
    end
    object tblSystemUseruserNo_int: TAutoIncField
      FieldName = 'userNo_int'
      ReadOnly = True
    end
    object tblSystemUserprescriber_ID: TGuidField
      FieldName = 'prescriber_ID'
      FixedChar = True
      Size = 38
    end
    object tblSystemUserdispenser_ID: TGuidField
      FieldName = 'dispenser_ID'
      FixedChar = True
      Size = 38
    end
    object tblSystemUserdemander_id: TIntegerField
      FieldName = 'demander_id'
    end
  end
  object tblUserSession: TADOQuery
    Connection = PatientMainConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'Select * from tblSystem_User_Session')
    Left = 144
    Top = 144
  end
  object dsTicketNumber: TDataSource
    DataSet = tblTicketNumber
    Left = 144
    Top = 216
  end
  object tblTicketNumber: TADOQuery
    Connection = PatientMainConnection
    CursorType = ctStatic
    BeforePost = tblTicketNumberBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT Record_Number, Record_DateSet'
      'FROM tblSystemRecordNumbering'
      'WHERE Record_TypeID = 44')
    Left = 48
    Top = 216
  end
end
