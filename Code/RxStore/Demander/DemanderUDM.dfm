object DemanderDM: TDemanderDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 559
  Top = 104
  Height = 756
  Width = 815
  object dsDemanders: TDataSource
    DataSet = adoSP_Demanders
    Left = 272
    Top = 62
  end
  object adoSP_DemandersUsers: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    CursorType = ctStatic
    BeforePost = adoSP_DemandersUsersBeforePost
    OnNewRecord = adoSP_DemandersUsersNewRecord
    ProcedureName = 'strdprc_DemandersUsers'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 88
    Top = 118
  end
  object dsDemandersUsers: TDataSource
    DataSet = adoSP_DemandersUsers
    Left = 272
    Top = 110
  end
  object adoSP_DemandersAuthorisedItems: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    CursorType = ctStatic
    BeforePost = adoSP_DemandersAuthorisedItemsBeforePost
    OnNewRecord = adoSP_DemandersAuthorisedItemsNewRecord
    ProcedureName = 'strdprc_DemandersAuthorisedItems'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 88
    Top = 230
  end
  object dsDemanderAuthorisedItems: TDataSource
    DataSet = adoSP_DemandersAuthorisedItems
    Left = 272
    Top = 230
  end
  object adoSP_DemandersIssues: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemandersIssues'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateStart'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateEnd'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 88
    Top = 174
  end
  object dsDemandersIssues: TDataSource
    DataSet = adoSP_DemandersIssues
    Left = 272
    Top = 166
  end
  object adoSP_DemandersExpenditures: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    CursorType = ctStatic
    ProcedureName = 'strdprc_DemandersExpenditures'
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 88
    Top = 286
  end
  object dsDemandersExpenditures: TDataSource
    DataSet = adoSP_DemandersExpenditures
    Left = 272
    Top = 286
  end
  object ADODemanderConnection: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=RxNew;Data Source=(local);Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;W' +
      'orkstation ID=SIFISOM;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 87
    Top = 14
  end
  object adoSP_Demanders: TADOTable
    Connection = ADODemanderConnection
    CursorType = ctStatic
    BeforePost = adoSP_DemandersBeforePost
    AfterPost = adoSP_DemandersAfterPost
    BeforeCancel = adoSP_DemandersBeforeCancel
    AfterCancel = adoSP_DemandersAfterCancel
    AfterDelete = adoSP_DemandersAfterDelete
    AfterScroll = adoSP_DemandersAfterScroll
    OnNewRecord = adoSP_DemandersNewRecord
    TableName = 'strdprc_Demanders'
    Left = 88
    Top = 70
    object adoSP_DemandersDemander_ID: TAutoIncField
      FieldName = 'Demander_ID'
      ReadOnly = True
    end
    object adoSP_DemandersCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 14
    end
    object adoSP_DemandersName_str: TWideStringField
      FieldName = 'Name_str'
      Size = 50
    end
    object adoSP_DemandersAddress1_str: TWideStringField
      FieldName = 'Address1_str'
      Size = 50
    end
    object adoSP_DemandersAddress2_str: TWideStringField
      FieldName = 'Address2_str'
      Size = 50
    end
    object adoSP_DemandersAddress3_str: TWideStringField
      FieldName = 'Address3_str'
      Size = 50
    end
    object adoSP_DemandersCity_str: TWideStringField
      FieldName = 'City_str'
      Size = 50
    end
    object adoSP_DemandersPostalCode_str: TWideStringField
      FieldName = 'PostalCode_str'
      Size = 50
    end
    object adoSP_DemandersHealthDistrict_str: TWideStringField
      FieldName = 'HealthDistrict_str'
      Size = 50
    end
    object adoSP_DemandersMagisterialDistrict: TWideStringField
      DisplayLabel = 'District Magist'#233'riale'
      FieldName = 'MagisterialDistrict'
      Size = 50
    end
    object adoSP_DemandersRegion_str: TWideStringField
      FieldName = 'Region_str'
      Size = 50
    end
    object adoSP_DemandersType_str: TWideStringField
      FieldName = 'Type_str'
      Size = 50
    end
    object adoSP_DemandersBeds_int: TIntegerField
      FieldName = 'Beds_int'
    end
    object adoSP_DemandersAuthority_str: TWideStringField
      FieldName = 'Authority_str'
      Size = 50
    end
    object adoSP_DemandersContact1_str: TWideStringField
      FieldName = 'Contact1_str'
      Size = 50
    end
    object adoSP_DemandersContact2_str: TWideStringField
      FieldName = 'Contact2_str'
      Size = 50
    end
    object adoSP_DemandersPhone_str: TWideStringField
      FieldName = 'Phone_str'
      Size = 50
    end
    object adoSP_DemandersFax_str: TWideStringField
      FieldName = 'Fax_str'
      Size = 50
    end
    object adoSP_DemandersPopulation_int: TIntegerField
      FieldName = 'Population_int'
    end
    object adoSP_DemandersInPatients_int: TIntegerField
      FieldName = 'InPatients_int'
    end
    object adoSP_DemandersOutPatients_int: TIntegerField
      FieldName = 'OutPatients_int'
    end
    object adoSP_DemandersLevy_str: TWideStringField
      FieldName = 'Levy_str'
      Size = 1
    end
    object adoSP_DemandersDeliveryRoute_str: TWideStringField
      FieldName = 'DeliveryRoute_str'
      Size = 50
    end
    object adoSP_DemandersAccount_str: TWideStringField
      FieldName = 'Account_str'
      Size = 50
    end
    object adoSP_DemandersActive_bol: TBooleanField
      FieldName = 'Active_bol'
    end
    object adoSP_DemandersBudget_mon: TBCDField
      FieldName = 'Budget_mon'
      Precision = 19
    end
    object adoSP_DemandersBudgetBalance_mon: TBCDField
      FieldName = 'BudgetBalance_mon'
      Precision = 19
    end
    object adoSP_DemandersItemsLevel_str: TWideStringField
      FieldName = 'ItemsLevel_str'
      Size = 50
    end
    object adoSP_DemandersRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object adoSP_DemandersPostalAddress1_str: TWideStringField
      FieldName = 'PostalAddress1_str'
      Size = 100
    end
    object adoSP_DemandersPostalAddress2_str: TWideStringField
      FieldName = 'PostalAddress2_str'
      Size = 100
    end
    object adoSP_DemandersPostalAddress3_str: TWideStringField
      FieldName = 'PostalAddress3_str'
      Size = 100
    end
    object adoSP_DemandersPostalLocation_str: TWideStringField
      FieldName = 'PostalLocation_str'
      Size = 100
    end
    object adoSP_DemandersPostalPostalCode_str: TWideStringField
      FieldName = 'PostalPostalCode_str'
      Size = 50
    end
    object adoSP_DemandersShipAddress1_str: TWideStringField
      FieldName = 'ShipAddress1_str'
      Size = 100
    end
    object adoSP_DemandersShipAddress2_str: TWideStringField
      FieldName = 'ShipAddress2_str'
      Size = 100
    end
    object adoSP_DemandersShipAddress3_str: TWideStringField
      FieldName = 'ShipAddress3_str'
      Size = 100
    end
    object adoSP_DemandersShipLocation_str: TWideStringField
      FieldName = 'ShipLocation_str'
      Size = 100
    end
    object adoSP_DemandersShipPostalCode_str: TWideStringField
      FieldName = 'ShipPostalCode_str'
      Size = 100
    end
    object adoSP_DemandersOpenOrMaxDriven: TBooleanField
      FieldName = 'OpenOrMaxDriven'
    end
    object adoSP_DemandersLastUpdateBy_str: TWideStringField
      FieldName = 'LastUpdateBy_str'
      Size = 75
    end
    object adoSP_DemandersLastUpdateBy_dbl: TIntegerField
      FieldName = 'LastUpdateBy_dbl'
    end
    object adoSP_DemandersProcurementPeriod_int: TIntegerField
      FieldName = 'ProcurementPeriod_int'
    end
    object adoSP_DemandersLeadTime_int: TIntegerField
      FieldName = 'LeadTime_int'
    end
    object adoSP_DemandersProvince_str: TWideStringField
      FieldName = 'Province_str'
      Size = 50
    end
    object adoSP_DemanderseMail_str: TWideStringField
      FieldName = 'eMail_str'
      Size = 100
    end
    object adoSP_DemandersCanDispense_bol: TBooleanField
      FieldName = 'CanDispense_bol'
    end
    object adoSP_DemandersDemanderUnique_ID: TGuidField
      FieldName = 'DemanderUnique_ID'
      FixedChar = True
      Size = 38
    end
  end
  object stpDeleteAuthorisedItem: TADOCommand
    Tag = 1
    CommandText = 'strdprc_DemandersAuthorisedItemsDELETEITEM'
    CommandType = cmdStoredProc
    Connection = ADODemanderConnection
    Parameters = <
      item
        Name = 'DemanderItemsID'
        Size = -1
        Value = Null
      end>
    Left = 88
    Top = 334
  end
  object ado_MagisterialDistrict: TADOTable
    Connection = ADODemanderConnection
    CursorType = ctStatic
    IndexFieldNames = 'Name_str'
    TableName = 'TlkMagisterialDistrict'
    Left = 88
    Top = 382
  end
  object ado_HealthDistrict: TADOTable
    Connection = ADODemanderConnection
    CursorType = ctStatic
    IndexFieldNames = 'Name_str'
    TableName = 'TlkHealthDistrict'
    Left = 88
    Top = 430
  end
  object ado_Region: TADOTable
    Connection = ADODemanderConnection
    IndexFieldNames = 'Name_str'
    TableName = 'TLKRegion'
    Left = 88
    Top = 478
  end
  object dsado_MagisterialDistrict: TDataSource
    DataSet = ado_MagisterialDistrict
    Left = 256
    Top = 382
  end
  object dsado_HealthDistrict: TDataSource
    DataSet = ado_HealthDistrict
    Left = 256
    Top = 430
  end
  object dsado_Region: TDataSource
    DataSet = ado_Region
    Left = 256
    Top = 478
  end
  object ppDBDemandersList: TppDBPipeline
    DataSource = dsDemanders
    UserName = 'DBDemandersList'
    Left = 496
    Top = 78
    object ppDBDemandersListppField1: TppField
      FieldAlias = 'Demander_ID'
      FieldName = 'Demander_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField2: TppField
      FieldAlias = 'Code_str'
      FieldName = 'Code_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField3: TppField
      FieldAlias = 'Name_str'
      FieldName = 'Name_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField4: TppField
      FieldAlias = 'Address1_str'
      FieldName = 'Address1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField5: TppField
      FieldAlias = 'Address2_str'
      FieldName = 'Address2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField6: TppField
      FieldAlias = 'Address3_str'
      FieldName = 'Address3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField7: TppField
      FieldAlias = 'City_str'
      FieldName = 'City_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField8: TppField
      FieldAlias = 'PostalCode_str'
      FieldName = 'PostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField9: TppField
      FieldAlias = 'HealthDistrict_str'
      FieldName = 'HealthDistrict_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField10: TppField
      FieldAlias = 'MagisterialDistrict'
      FieldName = 'MagisterialDistrict'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField11: TppField
      FieldAlias = 'Region_str'
      FieldName = 'Region_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField12: TppField
      FieldAlias = 'Type_str'
      FieldName = 'Type_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField13: TppField
      FieldAlias = 'Beds_int'
      FieldName = 'Beds_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField14: TppField
      FieldAlias = 'Authority_str'
      FieldName = 'Authority_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField15: TppField
      FieldAlias = 'Contact1_str'
      FieldName = 'Contact1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField16: TppField
      FieldAlias = 'Contact2_str'
      FieldName = 'Contact2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField17: TppField
      FieldAlias = 'Phone_str'
      FieldName = 'Phone_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField18: TppField
      FieldAlias = 'Fax_str'
      FieldName = 'Fax_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField19: TppField
      FieldAlias = 'Population_int'
      FieldName = 'Population_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField20: TppField
      FieldAlias = 'InPatients_int'
      FieldName = 'InPatients_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField21: TppField
      FieldAlias = 'OutPatients_int'
      FieldName = 'OutPatients_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField22: TppField
      FieldAlias = 'Levy_str'
      FieldName = 'Levy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField23: TppField
      FieldAlias = 'DeliveryRoute_str'
      FieldName = 'DeliveryRoute_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField24: TppField
      FieldAlias = 'Account_str'
      FieldName = 'Account_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField25: TppField
      FieldAlias = 'Active_bol'
      FieldName = 'Active_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField26: TppField
      FieldAlias = 'Budget_mon'
      FieldName = 'Budget_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField27: TppField
      FieldAlias = 'BudgetBalance_mon'
      FieldName = 'BudgetBalance_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField28: TppField
      FieldAlias = 'ItemsLevel_str'
      FieldName = 'ItemsLevel_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField29: TppField
      FieldAlias = 'Remarks_mem'
      FieldName = 'Remarks_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField30: TppField
      FieldAlias = 'PostalAddress1_str'
      FieldName = 'PostalAddress1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField31: TppField
      FieldAlias = 'PostalAddress2_str'
      FieldName = 'PostalAddress2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField32: TppField
      FieldAlias = 'PostalAddress3_str'
      FieldName = 'PostalAddress3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField33: TppField
      FieldAlias = 'PostalLocation_str'
      FieldName = 'PostalLocation_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField34: TppField
      FieldAlias = 'PostalPostalCode_str'
      FieldName = 'PostalPostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField35: TppField
      FieldAlias = 'ShipAddress1_str'
      FieldName = 'ShipAddress1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField36: TppField
      FieldAlias = 'ShipAddress2_str'
      FieldName = 'ShipAddress2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField37: TppField
      FieldAlias = 'ShipAddress3_str'
      FieldName = 'ShipAddress3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField38: TppField
      FieldAlias = 'ShipLocation_str'
      FieldName = 'ShipLocation_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField39: TppField
      FieldAlias = 'ShipPostalCode_str'
      FieldName = 'ShipPostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField40: TppField
      FieldAlias = 'OpenOrMaxDriven'
      FieldName = 'OpenOrMaxDriven'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField41: TppField
      FieldAlias = 'LastUpdateBy_str'
      FieldName = 'LastUpdateBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField42: TppField
      FieldAlias = 'LastUpdateBy_dbl'
      FieldName = 'LastUpdateBy_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField43: TppField
      FieldAlias = 'ProcurementPeriod_int'
      FieldName = 'ProcurementPeriod_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField44: TppField
      FieldAlias = 'LeadTime_int'
      FieldName = 'LeadTime_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField45: TppField
      FieldAlias = 'Province_str'
      FieldName = 'Province_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField46: TppField
      FieldAlias = 'eMail_str'
      FieldName = 'eMail_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField47: TppField
      FieldAlias = 'CanDispense_bol'
      FieldName = 'CanDispense_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersListppField48: TppField
      FieldAlias = 'DemanderUnique_ID'
      FieldName = 'DemanderUnique_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
  end
  object ppDemanderList: TppReport
    AutoStop = False
    DataPipeline = ppDBDemandersList
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppDemanderListPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 624
    Top = 78
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDemandersList'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 1588
        mmWidth = 40481
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 9525
        mmWidth = 197115
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4530
        mmLeft = 0
        mmTop = 0
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4530
        mmLeft = 22489
        mmTop = 0
        mmWidth = 158750
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Active'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4530
        mmLeft = 181769
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Code_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4106
        mmLeft = 22490
        mmTop = 0
        mmWidth = 157692
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Type_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 101600
        mmTop = 4498
        mmWidth = 11261
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Contact1_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 101600
        mmTop = 7673
        mmWidth = 16383
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 101600
        mmTop = 11377
        mmWidth = 13166
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fax_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 101600
        mmTop = 14817
        mmWidth = 9652
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBDemandersList
        DataField = 'Active_bol'
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 5292
        mmLeft = 186267
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 529
        mmLeft = 23283
        mmTop = 4233
        mmWidth = 170392
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address1_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 22490
        mmTop = 4498
        mmWidth = 17018
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address2_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 22490
        mmTop = 7673
        mmWidth = 17018
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'City_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 22490
        mmTop = 14817
        mmWidth = 9779
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address3_str'
        DataPipeline = ppDBDemandersList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersList'
        mmHeight = 4149
        mmLeft = 22490
        mmTop = 11377
        mmWidth = 17198
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 19579
        mmWidth = 197115
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 140229
        mmTop = 1058
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 184944
        mmTop = 3969
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 184680
        mmTop = 7408
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBDemandersDetail: TppDBPipeline
    DataSource = dsDemanders
    RangeEnd = reCount
    RangeEndCount = 1
    RangeBegin = rbCurrentRecord
    UserName = 'DBDemandersDetail'
    Left = 496
    Top = 126
    object ppDBDemandersDetailppField1: TppField
      FieldAlias = 'Demander_ID'
      FieldName = 'Demander_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField2: TppField
      FieldAlias = 'Code_str'
      FieldName = 'Code_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField3: TppField
      FieldAlias = 'Name_str'
      FieldName = 'Name_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField4: TppField
      FieldAlias = 'Address1_str'
      FieldName = 'Address1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField5: TppField
      FieldAlias = 'Address2_str'
      FieldName = 'Address2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField6: TppField
      FieldAlias = 'Address3_str'
      FieldName = 'Address3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField7: TppField
      FieldAlias = 'City_str'
      FieldName = 'City_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField8: TppField
      FieldAlias = 'PostalCode_str'
      FieldName = 'PostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField9: TppField
      FieldAlias = 'HealthDistrict_str'
      FieldName = 'HealthDistrict_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField10: TppField
      FieldAlias = 'MagisterialDistrict'
      FieldName = 'MagisterialDistrict'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField11: TppField
      FieldAlias = 'Region_str'
      FieldName = 'Region_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField12: TppField
      FieldAlias = 'Type_str'
      FieldName = 'Type_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField13: TppField
      FieldAlias = 'Beds_int'
      FieldName = 'Beds_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField14: TppField
      FieldAlias = 'Authority_str'
      FieldName = 'Authority_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField15: TppField
      FieldAlias = 'Contact1_str'
      FieldName = 'Contact1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField16: TppField
      FieldAlias = 'Contact2_str'
      FieldName = 'Contact2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField17: TppField
      FieldAlias = 'Phone_str'
      FieldName = 'Phone_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField18: TppField
      FieldAlias = 'Fax_str'
      FieldName = 'Fax_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField19: TppField
      FieldAlias = 'Population_int'
      FieldName = 'Population_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField20: TppField
      FieldAlias = 'InPatients_int'
      FieldName = 'InPatients_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField21: TppField
      FieldAlias = 'OutPatients_int'
      FieldName = 'OutPatients_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField22: TppField
      FieldAlias = 'Levy_str'
      FieldName = 'Levy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField23: TppField
      FieldAlias = 'DeliveryRoute_str'
      FieldName = 'DeliveryRoute_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField24: TppField
      FieldAlias = 'Account_str'
      FieldName = 'Account_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField25: TppField
      FieldAlias = 'Active_bol'
      FieldName = 'Active_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField26: TppField
      FieldAlias = 'Budget_mon'
      FieldName = 'Budget_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField27: TppField
      FieldAlias = 'BudgetBalance_mon'
      FieldName = 'BudgetBalance_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField28: TppField
      FieldAlias = 'ItemsLevel_str'
      FieldName = 'ItemsLevel_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField29: TppField
      FieldAlias = 'Remarks_mem'
      FieldName = 'Remarks_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField30: TppField
      FieldAlias = 'PostalAddress1_str'
      FieldName = 'PostalAddress1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField31: TppField
      FieldAlias = 'PostalAddress2_str'
      FieldName = 'PostalAddress2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField32: TppField
      FieldAlias = 'PostalAddress3_str'
      FieldName = 'PostalAddress3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField33: TppField
      FieldAlias = 'PostalLocation_str'
      FieldName = 'PostalLocation_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField34: TppField
      FieldAlias = 'PostalPostalCode_str'
      FieldName = 'PostalPostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField35: TppField
      FieldAlias = 'ShipAddress1_str'
      FieldName = 'ShipAddress1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField36: TppField
      FieldAlias = 'ShipAddress2_str'
      FieldName = 'ShipAddress2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField37: TppField
      FieldAlias = 'ShipAddress3_str'
      FieldName = 'ShipAddress3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField38: TppField
      FieldAlias = 'ShipLocation_str'
      FieldName = 'ShipLocation_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField39: TppField
      FieldAlias = 'ShipPostalCode_str'
      FieldName = 'ShipPostalCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField40: TppField
      FieldAlias = 'OpenOrMaxDriven'
      FieldName = 'OpenOrMaxDriven'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField41: TppField
      FieldAlias = 'LastUpdateBy_str'
      FieldName = 'LastUpdateBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField42: TppField
      FieldAlias = 'LastUpdateBy_dbl'
      FieldName = 'LastUpdateBy_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField43: TppField
      FieldAlias = 'ProcurementPeriod_int'
      FieldName = 'ProcurementPeriod_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField44: TppField
      FieldAlias = 'LeadTime_int'
      FieldName = 'LeadTime_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField45: TppField
      FieldAlias = 'Province_str'
      FieldName = 'Province_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField46: TppField
      FieldAlias = 'eMail_str'
      FieldName = 'eMail_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField47: TppField
      FieldAlias = 'CanDispense_bol'
      FieldName = 'CanDispense_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBDemandersDetailppField48: TppField
      FieldAlias = 'DemanderUnique_ID'
      FieldName = 'DemanderUnique_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
  end
  object ppDemandersDetail: TppReport
    AutoStop = False
    DataPipeline = ppDBDemandersDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppDemanderListPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 600
    Top = 126
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDemandersDetail'
    object ppTitleBand2: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Haettenschweiler'
        Font.Size = 36
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 13547
        mmLeft = 42069
        mmTop = 1006
        mmWidth = 153988
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Code_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Haettenschweiler'
        Font.Size = 36
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 13547
        mmLeft = 1323
        mmTop = 1006
        mmWidth = 39688
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 186267
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 200555
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address1_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 9260
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 39
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102923
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address2_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 14817
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Address3_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 20373
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'City_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 25929
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        SaveOrder = 40
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'City'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102923
        mmTop = 25929
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalCode_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 31485
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        SaveOrder = 41
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Postal Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102923
        mmTop = 31485
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HealthDistrict_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 60590
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        SaveOrder = 42
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Health District'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 61119
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MagisterialDistrict'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 66146
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 43
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Magisterial District'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 66675
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Region_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 71702
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        SaveOrder = 44
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Region'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 72231
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Type_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 77258
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        SaveOrder = 45
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 77788
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Beds_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 82815
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        SaveOrder = 46
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 83344
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Authority_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 88371
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        SaveOrder = 47
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Authority'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 88900
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Contact1_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 16140
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        SaveOrder = 48
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 16669
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Contact2_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 21696
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        SaveOrder = 49
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 27252
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        SaveOrder = 50
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telephone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 27781
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fax_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 32808
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        SaveOrder = 51
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 33338
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Population_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 93927
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 52
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Population'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 94456
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'InPatients_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 99484
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 53
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'In patients'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 100013
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OutPatients_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 105040
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        SaveOrder = 54
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Out patients'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 105569
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Levy_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 110596
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 55
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Charges'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 111125
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DeliveryRoute_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 116152
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 56
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Delivery Route'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 116681
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Account_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 121709
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        SaveOrder = 57
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Account'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 122238
        mmWidth = 18785
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 58
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Active'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 119592
        mmTop = 2381
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Budget_mon'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 127265
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 59
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Budget'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 127794
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BudgetBalance_mon'
        DataPipeline = ppDBDemandersDetail
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 132821
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        SaveOrder = 60
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Budget Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 133350
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ItemsLevel_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 139700
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        SaveOrder = 61
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Items Level'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 140229
        mmWidth = 23283
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Remarks_mem'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 28840
        mmLeft = 33867
        mmTop = 156634
        mmWidth = 162454
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        SaveOrder = 62
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Remarks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 145786
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalAddress1_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 36248
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        SaveOrder = 63
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Postal Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 36248
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalAddress2_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 41804
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalAddress3_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 47361
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalLocation_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 52917
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        SaveOrder = 64
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 52917
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PostalPostalCode_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 58473
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        SaveOrder = 65
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 58473
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShipAddress1_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 64029
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        SaveOrder = 66
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 64029
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShipAddress2_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 69586
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShipAddress3_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 75142
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        SaveOrder = 32
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShipLocation_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 80698
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        SaveOrder = 67
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 80698
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        SaveOrder = 33
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ShipPostalCode_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 137054
        mmTop = 86254
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        SaveOrder = 68
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Postal Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 102659
        mmTop = 86254
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        SaveOrder = 69
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Open or Max Driven'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 38894
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        SaveOrder = 34
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LastUpdateBy_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 3175
        mmLeft = 142082
        mmTop = 181769
        mmWidth = 58473
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        SaveOrder = 70
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Last updated'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 107686
        mmTop = 181769
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        SaveOrder = 35
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProcurementPeriod_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 43921
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        SaveOrder = 71
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Procurement Period'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 44450
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 36
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LeadTime_int'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 49477
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        SaveOrder = 72
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lead Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 50006
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        SaveOrder = 37
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Province_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 55033
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        SaveOrder = 73
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Province'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 55563
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkColor = clBlue
        SaveOrder = 38
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'eMail_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4149
        mmLeft = 33867
        mmTop = 10583
        mmWidth = 63500
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        SaveOrder = 74
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'eMail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1323
        mmTop = 11113
        mmWidth = 14552
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBDemandersDetail
        DataField = 'Active_bol'
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 6350
        mmLeft = 136261
        mmTop = 1588
        mmWidth = 6350
        BandType = 4
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBDemandersDetail
        DataField = 'OpenOrMaxDriven'
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 6350
        mmLeft = 33867
        mmTop = 38365
        mmWidth = 63500
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 529
        mmLeft = 1323
        mmTop = 0
        mmWidth = 193940
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 794
        mmWidth = 38269
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 185008
        mmTop = 794
        mmWidth = 11049
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object AppendEDL: TADOCommand
    Tag = 1
    CommandText = 'strdprc_DemanderUPDATE_AddInstitutionalEDLProducts'
    CommandType = cmdStoredProc
    Connection = ADODemanderConnection
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 528
    Top = 318
  end
  object DeleteItems: TADOCommand
    Tag = 1
    CommandText = 'strdprc_DemanderItemsDELETE'
    CommandType = cmdStoredProc
    Connection = ADODemanderConnection
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 528
    Top = 374
  end
  object ado_DemanderListForSelection: TADOTable
    Connection = ADODemanderConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'strdprc_DemandersWithItems'
    Left = 408
    Top = 478
  end
  object dsado_DemanderListForSelection: TDataSource
    DataSet = ado_DemanderListForSelection
    Left = 408
    Top = 526
  end
  object AddFromDemanders: TADOCommand
    Tag = 1
    CommandText = 'strdprc_DemanderAddItemsFromDemander'
    CommandType = cmdStoredProc
    Connection = ADODemanderConnection
    Parameters = <
      item
        Name = 'DemanderIDFrom'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 528
    Top = 430
  end
  object ado_Province: TADOTable
    Connection = ADODemanderConnection
    TableName = 'TLKProvince'
    Left = 88
    Top = 526
  end
  object dsado_Province: TDataSource
    DataSet = ado_Province
    Left = 256
    Top = 526
  end
  object ppDemandersAuthorisedItems: TppReport
    AutoStop = False
    DataPipeline = ppDBDemandersAuthorisedItems
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 600
    Top = 254
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDemandersAuthorisedItems'
    object ppHeaderBand3: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 265
        mmTop = 6350
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Code_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4868
        mmLeft = 25929
        mmTop = 6350
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 0
        mmTop = 0
        mmWidth = 24606
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 5715
        mmLeft = 25929
        mmTop = 265
        mmWidth = 159809
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contact: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 0
        mmTop = 11906
        mmWidth = 24606
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Contact1_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4868
        mmLeft = 25929
        mmTop = 11906
        mmWidth = 159809
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telephone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 0
        mmTop = 16933
        mmWidth = 24606
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phone_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4868
        mmLeft = 25929
        mmTop = 17198
        mmWidth = 159809
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Type: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 69321
        mmTop = 6615
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Type_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 4868
        mmLeft = 86784
        mmTop = 6615
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        mmHeight = 5027
        mmLeft = 0
        mmTop = 25135
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        mmHeight = 5027
        mmLeft = 46831
        mmTop = 25135
        mmWidth = 139171
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stock Max '
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 4233
        mmLeft = 255323
        mmTop = 25400
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        mmHeight = 5027
        mmLeft = 22225
        mmTop = 25135
        mmWidth = 24077
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clSilver
        Pen.Width = 4
        Weight = 3
        mmHeight = 1058
        mmLeft = 0
        mmTop = 23813
        mmWidth = 279401
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clSilver
        Pen.Width = 4
        Weight = 3
        mmHeight = 1323
        mmLeft = 0
        mmTop = 30692
        mmWidth = 279401
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBDemandersAuthorisedItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDemandersAuthorisedItems'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBDemandersAuthorisedItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDemandersAuthorisedItems'
        mmHeight = 4868
        mmLeft = 46567
        mmTop = 0
        mmWidth = 28279
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MaxStockSet_int'
        DataPipeline = ppDBDemandersAuthorisedItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersAuthorisedItems'
        mmHeight = 3969
        mmLeft = 255588
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clSilver
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 4763
        mmWidth = 279401
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBDemandersAuthorisedItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDemandersAuthorisedItems'
        mmHeight = 4763
        mmLeft = 22490
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 224632
        mmTop = 1058
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 269346
        mmTop = 3969
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 269082
        mmTop = 7408
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBDemandersAuthorisedItems: TppDBPipeline
    DataSource = dsDemanderAuthorisedItems
    UserName = 'DBDemandersAuthorisedItems'
    Left = 480
    Top = 254
  end
  object stpAddAuthorisedItems: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    ProcedureName = 'strdprc_DemanderAddAuthorisedItems'
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = 'ProductID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 408
    Top = 414
  end
  object dsDemandersTransferTo: TDataSource
    DataSet = ADOQuery1
    Left = 400
    Top = 65535
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tblDemander'
      'WHERE DemanderID <> DemanderID')
    Left = 272
    Top = 6
  end
  object adoStockList: TADOQuery
    Connection = ADODemanderConnection
    CursorType = ctStatic
    DataSource = dsDemanders
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from strdprc_DemanderStockList where Demander_ID = :Dem' +
        'ander_ID')
    Left = 88
    Top = 652
  end
  object dsadoStockList: TDataSource
    DataSet = adoStockList
    Left = 248
    Top = 652
  end
  object adoDemanderList: TADOQuery
    Connection = ADODemanderConnection
    DataSource = dsDemanders
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from tblDemander where (Demander_ID <> :Demander_ID)'
      'Order By Name_str')
    Left = 544
    Top = 494
  end
  object dsadoDemanderList: TDataSource
    DataSet = adoDemanderList
    Left = 672
    Top = 494
  end
  object stpStockTransferDemanders: TADOStoredProc
    Tag = 1
    Connection = ADODemanderConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'strdprc_AuditAPPENDDemanderTransfer;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DemanderFromUniqueID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DemanderToUniqueID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Quantity'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@QtyUnits'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Reference'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 225
        Value = Null
      end
      item
        Name = '@User'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 200
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VoucherNo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 225
        Value = Null
      end
      item
        Name = '@itemID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 408
    Top = 582
  end
  object ppDemanderIssues: TppReport
    AutoStop = False
    DataPipeline = ppDBDemandersIssues
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 600
    Top = 184
    Version = '11.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBDemandersIssues'
    object ppHeaderBand4: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 15081
        mmWidth = 6054
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 28310
        mmTop = 15081
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 57150
        mmTop = 15081
        mmWidth = 17568
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Issued'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 212990
        mmTop = 15081
        mmWidth = 19262
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 259557
        mmTop = 15081
        mmWidth = 7281
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Name_str'
        DataPipeline = ppDBDemandersDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersDetail'
        mmHeight = 8107
        mmLeft = 1323
        mmTop = 529
        mmWidth = 8594
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 794
        mmLeft = 1323
        mmTop = 19315
        mmWidth = 275432
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 224896
        mmTop = 794
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 256911
        mmTop = 529
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date Printed:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 203465
        mmTop = 794
        mmWidth = 20616
        BandType = 0
      end
      object ppDateParameter: TppLabel
        UserName = 'DateParameter'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date parameters'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 1323
        mmTop = 8996
        mmWidth = 135732
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBDemandersIssues
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 0
        mmWidth = 11938
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBDemandersIssues
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 28310
        mmTop = 0
        mmWidth = 13293
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description'
        DataPipeline = ppDBDemandersIssues
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 57150
        mmTop = 0
        mmWidth = 17568
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalIssued'
        DataPipeline = ppDBDemandersIssues
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 212990
        mmTop = 0
        mmWidth = 18203
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalCost'
        DataPipeline = ppDBDemandersIssues
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 248497
        mmTop = 0
        mmWidth = 18203
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalCost'
        DataPipeline = ppDBDemandersIssues
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDemandersIssues'
        mmHeight = 4022
        mmLeft = 242887
        mmTop = 1058
        mmWidth = 24342
        BandType = 8
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 794
        mmLeft = 1323
        mmTop = 529
        mmWidth = 275432
        BandType = 8
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 794
        mmLeft = 232569
        mmTop = 5292
        mmWidth = 34660
        BandType = 8
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 212990
        mmTop = 7938
        mmWidth = 54769
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 257705
        mmTop = 10848
        mmWidth = 10054
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 257440
        mmTop = 14288
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBDemandersIssues: TppDBPipeline
    DataSource = dsDemandersIssues
    UserName = 'DBDemandersIssues'
    Left = 496
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 8
  end
  object tblItemsHistory: TADOQuery
    Connection = ADODemanderConnection
    CursorType = ctStatic
    DataSource = dsDemanders
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT tblDemanderItemsHistory.*, tblProductPAckSize.Description' +
        '_str AS ProductStr '
      'FROM tblDemanderItemsHistory'
      
        'LEFT OUTER JOIN tblProductPAckSize ON tblProductPAckSize.Product' +
        'Code_ID=tblDemanderItemsHistory.ProductCode_ID'
      'WHERE Demander_ID=:Demander_ID'
      'ORDER BY ChangeDate_dat')
    Left = 552
    Top = 552
  end
  object dsItemsHistory: TDataSource
    DataSet = tblItemsHistory
    Left = 672
    Top = 552
  end
  object ActionList1: TActionList
    Left = 608
    Top = 16
  end
end
