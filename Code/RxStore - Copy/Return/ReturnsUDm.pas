unit ReturnsUDm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
     MyApplicationUtilities, ActnList, DBActns, ppParameter,
  ppModule, raCodMod, ppVar, DateUtils, myChkBox;

  const
  HST_ADD     = 'ADDED';
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_CHG     = 'CHANGED PRODUCT';

  ADD_ITEM    = 0;
  ADD_RET     = 1;


type
  TReturnsDm = class(TDataModule)
    qryReturnsItems: TADOQuery;
    qryReturnsCatalog: TADOQuery;
    dsReturnsCatalog: TDataSource;
    dsReturnsItems: TDataSource;
    AdoReturnsConn: TADOConnection;
    qryReturnsCatalogReturns_ID: TAutoIncField;
    qryReturnsCatalogSystemStore_ID: TIntegerField;
    qryReturnsCatalogSystemStore_str: TStringField;
    qryReturnsCatalogReturnsNo_str: TStringField;
    qryReturnsCatalogReturns_dat: TDateTimeField;
    qryReturnsCatalogTotalCost_mon: TBCDField;
    qryReturnsCatalogItemsNo_int: TIntegerField;
    qryReturnsCatalogRemarks_mem: TMemoField;
    qryReturnsCatalogLastUpdate_dat: TDateTimeField;
    qryReturnsCatalogLastUpdateBy_str: TStringField;
    qryReturnsCatalogLastUpdateBy_dbl: TIntegerField;
    qryReturnsCatalogPosted_bol: TBooleanField;
    qryReturnsCatalogPosted_dat: TDateTimeField;
    qryReturnsCatalogPostedBy_str: TStringField;
    qryReturnsCatalogCheckedOutBy_ID: TIntegerField;
    qryReturnsCatalogCheckedOutName_str: TWideStringField;
    qryReturnsCatalogCheckedOut_bol: TBooleanField;
    qryReturnsCatalogCheckedOut_dat: TDateTimeField;
    qryReturnsCatalogReason_str: TWideStringField;
    qryReturnsCatalogSupplier_ID: TIntegerField;
    qryReturnsCatalogSupplierName_str: TWideStringField;
    qryProductBatch: TADOQuery;
    dsqryProductBatch: TDataSource;
    stpReturnsEditHistory: TADOQuery;
    stp_ReturnsITemsTotals: TADOStoredProc;
    ActionList1: TActionList;
    atnAddSingleItem: TAction;
    AdoAddSingleItem: TADOCommand;
    atnDeleteAllItems: TAction;
    atnPostItem: TDataSetPost;
    atnCancelItem: TDataSetCancel;
    atnSaveandClose: TAction;
    dsHistory: TDataSource;
    tblSuppliers: TADOQuery;
    dsSuppliers: TDataSource;
    atnPostandClose: TAction;
    atnFirstItem: TDataSetFirst;
    atnNextItem: TDataSetNext;
    atnPriorItem: TDataSetPrior;
    atnLastItem: TDataSetLast;
    atnDeleteReturns: TAction;
    tblSystemUsers: TADOQuery;
    qryReturnsCatalogStoreOfficer_str: TWideStringField;
    qryReturnsCatalogFinanceOfficer_str: TWideStringField;
    dsUsers: TDataSource;
    atnSelectBatch: TAction;
    atnDeleteSingleItem: TAction;
    qryReturnsCatalogReference_str: TWideStringField;
    qryReturnsCatalogCaptured_dat: TDateTimeField;
    qryReturnsCatalogAuthorised_dat: TDateTimeField;
    qryReturnsCatalogStoreOfficer_ID: TGuidField;
    qryReturnsCatalogFinanceOfficer_ID: TGuidField;
    stp_ReturnsMarkComplete: TADOStoredProc;
    atnAddAnotherBatchItem: TAction;
    stpAddAnotherBatchItem: TADOStoredProc;
    qryReturnsItemsReturnsItem_ID: TAutoIncField;
    qryReturnsItemsReturns_ID: TIntegerField;
    qryReturnsItemsProductCode_ID: TIntegerField;
    qryReturnsItemsProductCode_str: TWideStringField;
    qryReturnsItemsQtyReturned_int: TIntegerField;
    qryReturnsItemsOldQty_int: TIntegerField;
    qryReturnsItemsPackCost_mon: TBCDField;
    qryReturnsItemsExpiry_dat: TDateTimeField;
    qryReturnsItemsUserName_str: TWideStringField;
    qryReturnsItemsLastUpDated_dat: TDateTimeField;
    qryReturnsItemsUserID_int: TIntegerField;
    qryReturnsItemsICN_str: TWideStringField;
    qryReturnsItemsNSN_str: TWideStringField;
    qryReturnsItemsECN_str: TWideStringField;
    qryReturnsItemsBatchNumber_str: TWideStringField;
    qryReturnsItemsExtendedCost_mon: TBCDField;
    qryReturnsItemsDiffQty_int: TIntegerField;
    qryReturnsItemsDescription_str: TStringField;
    qryReturnsItemsBin_str: TWideStringField;
    qryReturnsItemsProductBatch_ID: TIntegerField;
    qryReturnsCatalogType_str: TWideStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReportReturnOut: TppReport;
    qryReturnsReport: TADOStoredProc;
    dsReturnReport: TDataSource;
    ppParameterList1: TppParameterList;
    atnPrintReturnOutReport: TAction;
    atnRefreshAll: TAction;
    stp_DeleteAllItems: TADOStoredProc;
    qryBatchQty: TADOQuery;
    ppTitleBand2: TppTitleBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel58: TppLabel;
    ppDBText63: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel12: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel59: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel84: TppLabel;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText60: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText31: TppDBText;
    ppDBText3: TppDBText;
    ppDBText70: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable6: TppSystemVariable;
    ppLabel68: TppLabel;
    ppDBText94: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    qryReturnsReportOldQty_int: TIntegerField;
    qryReturnsReportQtyReturned_int: TIntegerField;
    qryReturnsReportPackCost_mon: TBCDField;
    qryReturnsReportExpiry_dat: TDateTimeField;
    qryReturnsReportBatchNumber_str: TWideStringField;
    qryReturnsReportLastUpDated_dat: TDateTimeField;
    qryReturnsReportReason_str: TWideStringField;
    qryReturnsReportICN_str: TWideStringField;
    qryReturnsReportNSN_str: TWideStringField;
    qryReturnsReportECN_str: TWideStringField;
    qryReturnsReportPosted_bol: TBooleanField;
    qryReturnsReportPosted_dat: TDateTimeField;
    qryReturnsReportExtendedCost_mon: TBCDField;
    qryReturnsReportReturnsNo_str: TStringField;
    qryReturnsReportReference_str: TWideStringField;
    qryReturnsReportReturns_dat: TDateTimeField;
    qryReturnsReportFinanceOfficer_str: TWideStringField;
    qryReturnsReportAuthorised_Dat: TDateTimeField;
    qryReturnsReportTotalCost_mon: TBCDField;
    qryReturnsReportItemsNo_int: TIntegerField;
    qryReturnsReportRemarks_mem: TMemoField;
    qryReturnsReportStoreOfficer_str: TWideStringField;
    qryReturnsReportCaptured_dat: TDateTimeField;
    qryReturnsReportDescription_str: TStringField;
    qryReturnsReportBin_str: TWideStringField;
    qryReturnsReportGroup1_str: TWideStringField;
    qryReturnsReportGroup2_str: TWideStringField;
    qryReturnsReportDemanderCode_Str: TWideStringField;
    qryReturnsReportDemanderName_str: TWideStringField;
    qryReturnsReportAddress1_str: TWideStringField;
    qryReturnsReportAddress3_str: TWideStringField;
    qryReturnsReportCity_str: TWideStringField;
    qryReturnsReportName_str: TWideStringField;
    qryReturnsReportCode_str: TWideStringField;
    qryReturnsReportAddress1_str_1: TWideStringField;
    qryReturnsReportAddress2_str: TWideStringField;
    qryReturnsReportAddress3_str_1: TWideStringField;
    qryReturnsReportAddress4_str: TWideStringField;
    qryReturnsReportProvincialLogo_img: TBlobField;
    qryTotalQtyonHand: TADOQuery;
    atnSelectInvoice: TAction;
    tblReceipts: TADOQuery;
    tblReceiptsReceiptNo_ID: TAutoIncField;
    tblReceiptsReceiptDate_dat: TDateTimeField;
    tblReceiptsActivated_bol: TBooleanField;
    tblReceiptsReceiptNo_str: TStringField;
    tblReceiptsActivated_dat: TDateTimeField;
    tblReceiptsVoucherNo_str: TStringField;
    tblReceiptsOrderNo_ID: TIntegerField;
    tblReceiptsSupplier_ID: TIntegerField;
    tblReceiptsCharges_mon: TBCDField;
    tblReceiptsOrdered_dat: TDateTimeField;
    tblReceiptsInvoiced_dat: TDateTimeField;
    tblReceiptsInvoiceNo_str: TStringField;
    tblReceiptsReceived_dat: TDateTimeField;
    tblReceiptsReceivedBy_str: TStringField;
    tblReceiptsLeadTime_int: TIntegerField;
    tblReceiptsTotalPaid_mon: TBCDField;
    tblReceiptsBoxes_int: TIntegerField;
    tblReceiptsItemsNo_int: TIntegerField;
    tblReceiptsChecked_dat: TDateTimeField;
    tblReceiptsCheckedBy_str: TStringField;
    tblReceiptsActivatedBy_str: TStringField;
    tblReceiptsType_str: TStringField;
    tblReceiptsTotalCost_mon: TBCDField;
    tblReceiptsItemsCost_mon: TBCDField;
    tblReceiptsOtherCharges_mon: TBCDField;
    tblReceiptsLastUpdate_dat: TDateTimeField;
    tblReceiptsSystemStore_Str: TStringField;
    tblReceiptsSupplier_str: TStringField;
    tblReceiptsOrderRef_Str: TStringField;
    tblReceiptsItemsComplete_bol: TBooleanField;
    dsReceipts: TDataSource;
    qryReceiptItems: TADOQuery;
    qryReceiptItemsReceiptItem_ID: TAutoIncField;
    qryReceiptItemsReceiptNo_ID: TIntegerField;
    qryReceiptItemsProductCode_ID: TIntegerField;
    qryReceiptItemsOrderitemsNo_ID: TIntegerField;
    qryReceiptItemsOrderNo_ID: TIntegerField;
    qryReceiptItemsQtyOnHand_int: TIntegerField;
    qryReceiptItemsQtyOrdered_int: TIntegerField;
    qryReceiptItemsQtyReceived_int: TIntegerField;
    qryReceiptItemsQtyToFollow_int: TIntegerField;
    qryReceiptItemsPackCost_mon: TBCDField;
    qryReceiptItemsExtendedCost_mon: TBCDField;
    qryReceiptItemsBin_str: TStringField;
    qryReceiptItemsBarCode_str: TStringField;
    qryReceiptItemsLastUpdate_dat: TDateTimeField;
    qryReceiptItemsOrder_QtyOrdered: TIntegerField;
    qryReceiptItemsOrder_QtyReceived: TIntegerField;
    qryReceiptItemsOrder_PackCost: TBCDField;
    qryReceiptItemsOrder_QtyOutstanding: TIntegerField;
    qryReceiptItemsTradeName_str: TStringField;
    qryReceiptItemsReceiptNo_str: TStringField;
    qryReceiptItemsProductCode_str: TStringField;
    qryReceiptItemsVoucherNo_str: TStringField;
    qryReceiptItemsNSN_str: TStringField;
    qryReceiptItemsICN_str: TStringField;
    qryReceiptItemsECN_str: TStringField;
    qryReceiptItemsOrderNo_str: TStringField;
    qryReceiptItemsDuesOut_int: TIntegerField;
    qryReceiptItemsCompleted_bol: TBooleanField;
    qryReceiptItemsChargeCode_str: TStringField;
    qryReceiptItemsExpiry_dat: TDateTimeField;
    qryReceiptItemsLastUpdateBy_str: TStringField;
    qryReceiptItemsLastUpdateBy_dbl: TIntegerField;
    qryReceiptItemsBatchNumber_str: TStringField;
    qryReceiptItemsBatchQty_int: TIntegerField;
    qryReceiptItemsShippingPack_int: TIntegerField;
    qryReceiptItemsQtyOnHold_int: TIntegerField;
    qryReceiptItemsCalc_PackCost_mon: TBCDField;
    dsReceiptItems: TDataSource;
    atnUnLockReturns: TAction;
    qryIsRecordLocked: TADOQuery;
    dsReturnsWorker: TDataSource;
    qryReturnsWorker: TADOQuery;
    qryReturnsWorkerReturns_ID: TAutoIncField;
    qryReturnsWorkerSystemStore_ID: TIntegerField;
    qryReturnsWorkerSystemStore_str: TStringField;
    qryReturnsWorkerReturnsNo_str: TStringField;
    qryReturnsWorkerReturns_dat: TDateTimeField;
    qryReturnsWorkerTotalCost_mon: TBCDField;
    qryReturnsWorkerItemsNo_int: TIntegerField;
    qryReturnsWorkerRemarks_mem: TMemoField;
    qryReturnsWorkerLastUpdate_dat: TDateTimeField;
    qryReturnsWorkerLastUpdateBy_str: TStringField;
    qryReturnsWorkerLastUpdateBy_dbl: TIntegerField;
    qryReturnsWorkerPosted_bol: TBooleanField;
    qryReturnsWorkerPosted_dat: TDateTimeField;
    qryReturnsWorkerPostedBy_str: TStringField;
    qryReturnsWorkerCheckedOutBy_ID: TIntegerField;
    qryReturnsWorkerCheckedOutName_str: TWideStringField;
    qryReturnsWorkerCheckedOut_bol: TBooleanField;
    qryReturnsWorkerCheckedOut_dat: TDateTimeField;
    qryReturnsWorkerReason_str: TWideStringField;
    qryReturnsWorkerSupplier_ID: TIntegerField;
    qryReturnsWorkerSupplierName_str: TWideStringField;
    qryReturnsWorkerStoreOfficer_str: TWideStringField;
    qryReturnsWorkerFinanceOfficer_str: TWideStringField;
    qryReturnsWorkerReference_str: TWideStringField;
    qryReturnsWorkerCaptured_dat: TDateTimeField;
    qryReturnsWorkerAuthorised_dat: TDateTimeField;
    qryReturnsWorkerStoreOfficer_ID: TGuidField;
    qryReturnsWorkerFinanceOfficer_ID: TGuidField;
    qryReturnsWorkerType_str: TWideStringField;
    atnUnLockReturnsMain: TAction;
    qryReturnsItemsShippingPack_int: TIntegerField;
    qryBatchOnHold: TADOQuery;
    qryBatchOnHoldReturnsTotal: TADOQuery;
    stpAddBatchITem: TADOStoredProc;
    function ValidatePosting: Boolean;
    function PostRecord: Boolean;
    procedure SetStatusOfActions;
    procedure DataConnect(startDate : TDateTime; endDate :TDateTime);
    procedure qryReturnsItemsAfterScroll(DataSet: TDataSet);
    Procedure LoadBatchItems;
    procedure EditReturns;
    procedure AddReturns;
    procedure UpdateReturnsSubTotals;
    procedure UpdateReturnsItemsTotals;
    procedure qryReturnsCatalogBeforePost(DataSet: TDataSet);
    procedure atnAddSingleItemExecute(Sender: TObject);
    procedure AddReturnsItem(pReqID, pProductID: double);
    procedure AddEditHistory(const pType, pStr :string; pAddType: integer );
    procedure atnSaveandCloseExecute(Sender: TObject);
    procedure RefreshReturnsList;
    procedure LoadSuppliers;
    procedure LoadUsers;
    procedure LoadEditHistory;
    procedure LoadReturnsItems;
    procedure atnDeleteReturnsExecute(Sender: TObject);
    procedure atnSelectBatchExecute(Sender: TObject);
    procedure atnPostandCloseExecute(Sender: TObject);
    procedure atnDeleteSingleItemExecute(Sender: TObject);
    procedure qryReturnsItemsBeforePost(DataSet: TDataSet);
    procedure qryReturnsCatalogFinanceOfficer_IDChange(Sender: TField);
    procedure AddAnotherBatchItem(ReturnID: integer; ProductCodeID: integer);
    procedure atnAddAnotherBatchItemExecute(Sender: TObject);
    procedure qryReturnsItemsQtyReturned_intChange(Sender: TField);
    procedure qryReturnsCatalogAfterScroll(DataSet: TDataSet);
    procedure PrintReturnsOut;
    procedure atnPrintReturnOutReportExecute(Sender: TObject);
    procedure DeleteAllItems;
    procedure atnDeleteAllItemsExecute(Sender: TObject);
    procedure atnSelectInvoiceExecute(Sender: TObject);
    procedure LoadReceipts(startDate : TDateTime; endDate :TDateTime);
    procedure LoadReceiptItems(ReceiptNo_ID: Integer);
    procedure AddReturnItemsFromInvoice;
    procedure atnUnLockReturnsExecute(Sender: TObject);
    function IsRecordLocked: Boolean;
    procedure qryReturnsWorkerFinanceOfficer_IDChange(Sender: TField);
    procedure qryReturnsWorkerStoreOfficer_IDChange(Sender: TField);
    procedure atnUnLockReturnsMainExecute(Sender: TObject);
  private
    { Private declarations }
    FStartDate, FEndDate: TDateTime;
  public
    { Public declarations }
    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    FUsesBarcoding : Boolean;
    CheckComplete, atnEnabled, lockedByUser, AddNewRecord: Boolean;
    vCurrentRecord: integer;
    procedure UnLockReturns;
    procedure UnLockReturnsMain;
    function TotalOnHoldBatch(ProductBatch_ID: integer): Integer;
    function TotalOnHoldProduct(ProductCode_ID: integer): Integer;
    function QtyReturned: Integer;
    procedure AddAnotherProductBatch(ReturnID: integer; ProductCodeID : integer; ProductBatchID: integer; Batch: string; expiryDate: TDateTime; qty : integer);
  end;

var
  ReturnsDm: TReturnsDm;

implementation

uses RxSolutionUFrm, MainUDM, ProductGeneralUFrm, DialogGridColumnSelectorUFrm,
  RxSolutionSecurityClass, ReturnsDetailUFrm, ReturnsSelectBatchUFrm,
  ReturnsSelectInvoiceUFrm;

{$R *.dfm}

procedure TReturnsDm.SetStatusOfActions;
begin

 with RxSolutionFrm.Security do
  atnEnabled             := GetUserAccessLevel(MODULE_STORE_RETURNS) > USER_BROWSER;
 CheckComplete                  := qryReturnsCatalog.FieldByName('Posted_bol').AsBoolean;
// lockedByUser                   := qryReturnsCatalog.FieldByName('CheckedOut_bol').AsBoolean;         
//check each status
 atnAddSingleItem.Enabled       := (atnEnabled and (not (CheckComplete)));
 atnDeleteSingleItem.Enabled    := (atnEnabled and (not (CheckComplete)));
 atnDeleteAllItems.Enabled      := (atnEnabled and (not (CheckComplete)));
 atnPostandClose.Enabled        := (atnEnabled and (not (CheckComplete)));
 atnDeleteReturns.Enabled       := (atnEnabled and (not (CheckComplete)));
 atnSelectBatch.Enabled         := (atnEnabled and (not (CheckComplete)));
 atnAddAnotherBatchItem.Enabled := (atnEnabled and (not (CheckComplete)));
 atnDeleteAllItems.Enabled      := (atnEnabled and (not (CheckComplete)));
 atnSelectInvoice.Enabled       := (atnEnabled and (not (CheckComplete)));

end;

procedure TReturnsDm.DataConnect(startDate : TDateTime; endDate :TDateTime);
var
 FDataBasePath       : string;
begin

if Assigned(MainDM) then
 begin
 AdoReturnsConn.ConnectionString := MainDM.ADOMainDBConnection.ConnectionString;

 //Sim 15Sep2009
 FStartDate := startDate;
 FEndDate   := endDate;

 with qryReturnsCatalog do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('StartDate').Value     := startDate;
  Parameters.ParamByName('EndDate').Value       := endDate;
  Prepared := True;
  Open;
  end;

 FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
 FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
 FUsesBatchManagement := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean;
 FUsesBarcoding := MainDm.tblMainSystem.FieldByName('useBarCoding_bol').AsBoolean;
 end;
 
end;


Procedure TReturnsDm.LoadBatchItems;    //Load batch items
var
 item_id : integer;
begin
 item_id := qryReturnsItems.FieldByName('ProductCode_ID').AsInteger;
 with qryProductBatch do
  begin
  Close;
  Parameters.ParamByName('ProductCode_ID').Value := item_id;
  Open;
  end;
end;

procedure TReturnsDm.LoadReturnsItems;
begin
 with qryReturnsItems do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('Returns_ID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;
end;

procedure TReturnsDm.qryReturnsItemsAfterScroll(DataSet: TDataSet);
begin
 LoadBatchItems; 
end;

procedure TReturnsDm.EditReturns;
begin    

 with qryReturnsWorker do
  begin
  Close;
  Parameters.ParamByName('Returns_ID').Value := vCurrentRecord;
  Open;
  if not (qryReturnsWorker.FieldByName('Posted_bol').AsBoolean or qryReturnsWorker.FieldByName('CheckedOut_bol').AsBoolean) then
   begin
   Edit;
   FieldByName('CheckedOutName_str').AsString     := FUserName;
   FieldByName('CheckedOut_bol').AsBoolean        := True;
   FieldByName('CheckedOutBy_ID').AsString        := FUserID;
   FieldByName('CheckedOut_dat').AsDateTime       := Now;
   Post;
   end;
  end;

 LoadReturnsItems;

 with stp_ReturnsITemsTotals do
  begin
  if Active then
  Close;
  Prepared := False;
  Parameters.ParamByName('@ReturnsID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;

 LoadEditHistory;
 LoadUsers;
 LoadSuppliers;
 SetStatusOfActions;
end;


procedure TReturnsDm.AddReturns;
var
  vFetchSuccess :boolean;
begin

 AddNewRecord := True;
//Check for unposted documents like req and receipts
 qryReturnsCatalog.Append;
 qryReturnsCatalog.FieldByName('ReturnsNo_str').AsString      := MainDm.GetNextVoucherNumber(vFetchSuccess, 1, MODULE_STORE_RETURNS);
 qryReturnsCatalog.FieldByName('Posted_bol').AsBoolean        := False;
 qryReturnsCatalog.FieldByName('CheckedOut_bol').AsBoolean    := True;
 qryReturnsCatalog.FieldByName('CheckedOutName_str').AsString := FUserName;
 qryReturnsCatalog.FieldByName('CheckedOut_dat').AsDateTime   := Now;
 qryReturnsCatalog.FieldByName('Returns_dat').AsDateTime      := Date;
 qryReturnsCatalog.FieldByName('SystemStore_ID').Value        := MainDm.tblMainSystem.fieldByName('SystemStore_ID').AsInteger;
// qryReturnsCatalog.FieldByName('SystemStore_ID').Value        := ;
 qryReturnsCatalog.FieldByName('Reason_str').AsString         := 'Stock has been returned because ';
 qryReturnsCatalog.Post;

 vCurrentRecord := qryReturnsCatalog.FieldByName('Returns_ID').AsInteger;

 EditReturns;

 CheckComplete := False;

 SetStatusOfActions;
end;

procedure TReturnsDm.UpdateReturnsSubTotals;
begin
 with qryReturnsWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('ItemsNo_int').AsInteger           := stp_ReturnsITemsTotals.FieldByName('CountOfReturnsItem_ID').AsInteger;
  FieldByName('TotalCost_mon').AsCurrency        := stp_ReturnsITemsTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency;
  Post;
  end;
end;

//Update Record totals
procedure TReturnsDM.UpdateReturnsItemsTotals;
begin
 with stp_ReturnsItemsTotals do
  begin
  if Active then
   Close;
  Parameters.ParamByName('@ReturnsID').Value := vCurrentRecord;
  Open;
  UpdateReturnsSubTotals;
  end;
end;

procedure TReturnsDm.qryReturnsCatalogBeforePost(DataSet: TDataSet);
begin

end;

//Add a single item to current record
procedure TReturnsDm.AddReturnsItem(pReqID, pProductID: double);
begin
//Send data to stored procedure to add new item to current item list
 with AdoAddSingleItem do
  begin
  Prepared := False;
  Parameters.ParamByName('@ReturnsID').Value            := pReqID;
  Parameters.ParamByName('@LastUpdatedat').Value        := Now;
  Parameters.ParamByName('@ProductCodeID').Value        := pProductID;
  Execute;
  end;
end;

//Add products from product select screen
procedure TReturnsDm.atnAddSingleItemExecute(Sender: TObject);
var
  vProductSelector  : TProductSelector;
  vRetID            : double;
  vProductID        : cIDArray;
  vProductCost      : cCostArray;
  i                 : integer;
begin
// Use same table as curently being edited
// Get current ID's for Req items
with qryReturnsWorker do
 vRetID := FieldByName('Returns_ID').AsFloat;

 vProductSelector := TProductSelector.Create;
 with qryReturnsItems, vProductSelector do
  if Active then
   try
   if Product_SelectItems( vProductCost, vProductID) then
    for i := low(vProductID) to high(vProductID) do
     try
     if not Locate('ProductCode_ID;Returns_ID', VarArrayOf([vProductID[i], vRetID]), []) then
      begin
      AddReturnsItem( vRetID, vProductID[i]);
      end;

     Close;
     Prepared := False;
     Parameters.ParamByName('Returns_ID').Value := vCurrentRecord;
     Prepared := True;
     Open;

     UpdateReturnsSubTotals;
     UpdateReturnsItemsTotals;
     AddEditHistory(HST_ADD, 'Adding product(s)', ADD_RET);
     //Added by SM; move cursor to last added item
     Locate('ProductCode_ID;Returns_ID', VarArrayOf([vProductID[i], vRetID]), []);
     except
     end;
   finally
    Free;
    end;
end;

//Add any changes to the history table
procedure TReturnsDM.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer );
var
  vRetID, vRetItemID  :double;
begin
  vRetID      := 0;
  vRetItemID  := 0;
 // Get current ID's for Return items
  with qryReturnsWorker do
    if Active then
      if RecordCount > 0 then
        vRetID := qryReturnsWorker.FieldByName('Returns_ID').AsFloat;

  with qryReturnsItems do
    if Active then
      if RecordCount > 0 then
        vRetItemID := FieldByName('ReturnsItem_ID').AsFloat;

  //Open the correct history records
  with stpReturnsEditHistory do
   begin
   if not Active then
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('@ReturnsID').Value := vRetID;
    Prepared := True;
    Open;
    end;
  //Add new edit history entry
  Append;
  FieldByname('Returns_ID').AsFloat   := vRetID;
  FieldByName('Description_str').AsString := pStr;
  FieldByName('UserName_str').AsString    := FUserName;
  FieldByName('User_ID').AsFloat          := FUserID;
  FieldByName('Date_dat').AsDateTime      := Now;
  FieldByName('Type_str').AsString        := pType;
  FieldByName('ReturnsItem_ID').AsFloat := vRetItemID;
  case pAddType of
   ADD_ITEM :
    begin
    FieldByName('ProductCode_ID').AsFloat   := qryReturnsItems.FieldByName('Productcode_ID').AsFloat;
//    FieldByName('Item_ID').AsFloat          := vRetItemID;
    end;
   ADD_RET :
    begin
    FieldByName('ProductCode_ID').AsFloat   := 0;
//    FieldByName('Item_ID').AsFloat          := 0;
    end;
   end;

  Post;
  Close;
  Open;
  end;
end;

procedure TReturnsDm.atnSaveandCloseExecute(Sender: TObject);
begin

//if not lockedByUser then
 if (not qryReturnsWorker.FieldByName('Posted_bol').AsBoolean) then
 begin
 //Bug Issue 2176
 with qryReturnsItems do
  begin
  if (State in [dsEdit, dsInsert]) then
    Post;
  end;
 //End Bug issue 2176

 with qryReturnsWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsString       := '';
  FieldByName('SupplierName_str').AsString      :=  ReturnsDetailUFrm.ReturnsDetailFrm.cmbSupplierCode.Text;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;
  end;
 UpdateReturnsItemsTotals;
 end;

 ReturnsDetailFrm.Close;
 RefreshReturnsList;
end;

procedure TReturnsDm.RefreshReturnsList;
begin

 with qryReturnsCatalog do
  begin
  Close;
  Open;
  end;

 LoadReturnsItems;           
end;

procedure TReturnsDm.LoadSuppliers;
begin
 with tblSuppliers do
  begin
  Close;
  Open;
  end;
end;

procedure TReturnsDm.LoadUsers;
begin

 with tblSystemUsers do
  begin
  Close;
  Open;
  end;
  
end;

procedure TReturnsDm.LoadEditHistory;
begin
 with stpReturnsEditHistory do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@ReturnsID').Value := qryReturnsCatalog.FieldByName('Returns_ID').Value;
  Prepared := True;
  Open;
  end;
end;

procedure TReturnsDm.atnDeleteReturnsExecute(Sender: TObject);
var
 refnumber: string;
begin

 refnumber := qryReturnsWorker.FieldByName('ReturnsNo_str').AsString;
// if not lockedByUser then
  if not qryReturnsWorker.FieldByName('Posted_bol').AsBoolean then
   begin
   with qryReturnsWorker do
     if MessageDlg('Are you sure you want to delete the tranactions on ['+ refnumber +']?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      Delete;
   end
  else
   MessageDlg('Transactions cannot be deleted once they have been posted', mtError, [mbOk], 0);

end;

procedure TReturnsDm.atnSelectBatchExecute(Sender: TObject);
begin
 if qryProductBatch.RecordCount > 0 then
  ReturnsSelectBatchFrm.ShowModal
 else
  MessageDlg('This item has no other batches available.', mtInformation, [mbOK], 0); 
end;

procedure TReturnsDm.atnPostandCloseExecute(Sender: TObject);
var
 vReturnsID : integer;
 WMS : string;
 vPostedBy : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
//Current document
 vReturnsID := qryReturnsWorker.fieldByName('Returns_ID').Value;
 vPostedBy := FUserName;
 if qryReturnsWorker.State in [dsEdit, dsInsert] then
  begin
  qryReturnsWorker.FieldByName('CheckedOut_bol').AsBoolean := False;
  qryReturnsWorker.FieldByName('CheckedoutName_str').AsString := '';
  qryReturnsWorker.FieldByName('CheckedOutBy_ID').AsString := '';
  qryReturnsWorker.Post;
  end;

if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0) = mrYes then
 if ValidatePosting then

   if PostRecord then
   begin
   MessageDlg('Returns Out has been posted!', mtInformation, [mbYes], 0);
   with stp_ReturnsMarkComplete do
    begin
    Prepared := False;
    Parameters.ParamByName('@ReturnsID').Value := vReturnsID;
    Parameters.ParamByName('@PostedBy').Value := FUserName;
    Parameters.ParamByName('@SupplierName_str').Value := ReturnsDetailUFrm.ReturnsDetailFrm.cmbSupplierCode.Text;
    Prepared := True;
    ExecProc;
    end;
   // Refresh data
   qryReturnsCatalog.Close;
   qryReturnsCatalog.Open;
   qryReturnsCatalog.Locate('Returns_ID', vReturnsID, []);
   // Close detail form
   ReturnsDetailFrm.Close;
   end;//
end;

function TReturnsDM.ValidatePosting: Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Captured By && Date' +
          #13 + 'Authorised By && Date' +
          #13 + 'Type' +
          #13 + 'Reason' +
          #13 + 'Reference';  
begin
  Result := True;

  if qryReturnsWorker.Active then
   begin
   with qryReturnsWorker do
    begin
    if FieldByName('StoreOfficer_str').AsString = '' then Result := False;
    if FieldByName('FinanceOfficer_str').AsString = '' then Result := False;
    if FieldByName('Authorised_dat').AsString = '' then Result := False;
    if FieldByName('Captured_dat').IsNull then Result := False;
    if FieldByName('Reason_str').AsString = '' then Result := False;
    end;

   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
   end
  else
   Result := False;
end;

procedure TReturnsDm.atnDeleteSingleItemExecute(Sender: TObject);
var itemDescrip : string;

begin
 with qryReturnsItems do
  begin
  if recordCount > 0 then
   if MessageDlg('Are you sure you want to remove the item from the list?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    itemDescrip := FieldByName('Description_str').AsString;
    AddEditHistory(HST_DEL, 'Item '+ itemDescrip + ' removed from returns out', ADD_ITEM);
    Delete;
    end;
  end;
end;

procedure TReturnsDm.qryReturnsItemsBeforePost(DataSet: TDataSet);
var
 vBatchQty, vOnHold, vReturned: integer;
begin
 with qryReturnsItems do
  begin
  vBatchQty := 0;
  vReturned := QtyReturned;
 //Check if batch has been selected; if not then force user to select batch
  if (FieldByName('QtyReturned_int').AsInteger > 0) and (VarIsNull(FieldByName('ProductBatch_ID').Value) and (FUsesBatchManagement)) then
   begin
   FieldByName('QtyReturned_int').AsInteger := 0;
   ShowMessage('Batch has not been selected. Please select a batch product first');
   if qryProductBatch.RecordCount > 0 then
    ReturnsSelectBatchFrm.ShowModal
   else
    ShowMessage('There are no batch products available for this item'); 
   Abort;
   end;

  //PROBLEM AREA HERE... INVESTIGATE
  //Must include QTY ON HOLD: Returns + Requisitions
  if not (VarIsNull(FieldByName('ProductBatch_ID').Value)) then
   with qryBatchQty do
    begin
    Close;
    Parameters.ParamByName('ProductBatch_ID').Value := qryReturnsItems.FieldByName('ProductBatch_ID').Value;
    Open;
    if qryBatchQty.RecordCount > 0 then
     vBatchQty := qryBatchQty.FieldByName('QtyOnHand_int').AsInteger
    else
     vBatchQty := 0;
    end;
   vOnHold := 0;
   vOnHold := TotalOnHoldBatch(qryReturnsItems.FieldByName('ProductBatch_ID').Value);

  // Showmessage('Av: '+IntToStr(vBatchQty - vOnHold + vReturned) +#13+'Qty: '+IntToStr(vBatchQty)+#13+'Ret: '+IntToStr(vReturned));

   //bug issue 178
   if (vBatchQty - vOnHold + vReturned) < FieldByName('QtyReturned_int').AsInteger then
    begin
    ShowMessage('Cannot return more stock then available');
    FieldByName('QtyReturned_int').AsInteger := vBatchQty - vOnHold + vReturned;  //Remember to subtract the currently Returned amount
    end;
 end;

end;

function TReturnsDM.PostRecord: Boolean;
var
  vProductID  :double;
  vSupplierID  :double;
  vItemsID     : double;
  vProdDet    :RProductDetails;
  vType       :String;
  vNewQty     :integer;
  vOldQty     :integer;
  vTotalinStock : integer;
  vCost       :Currency;
  vExpiryDate :TDateTime;
  vDate       :TDateTime;
  vReason     :String;
  vAdjQty     :integer;
  vBatchQty   :integer;
  vBatchNumber : string;

  Attempts        :Integer;
  SubmitVariance  :Boolean;
  vAuditData      :RProductAuditDetails;
  S :string;
  Save_Cursor:TCursor;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 try
 with qryReturnsItems do
  begin
  First;
  While (not eof)  do
   begin
   if (FieldByName('QtyReturned_int').AsInteger > 0)  then
    begin
    vProductID  := FieldByName('ProductCode_ID').AsInteger;
    vItemsID    := FieldByName('ReturnsItem_ID').AsInteger;
    vType       := Copy(qryReturnsWorker.FieldByName('Type_str').AsString, 1,1);
    vAdjQty     := FieldByName('QtyReturned_int').AsInteger;
    vCost       := FieldByName('PackCost_mon').AsCurrency * FieldByName('QtyReturned_int').AsInteger;
    vExpiryDate := FieldByName('Expiry_dat').AsDateTime;
    vBatchNumber:= FieldByName('BatchNumber_str').AsString;
    vDate       := qryReturnsWorker.FieldByName('Captured_dat').AsDateTime;
    vReason     := qryReturnsWorker.FieldByName('Reason_str').AsString;
    vSupplierID := qryReturnsWorker.FieldByName('Supplier_ID').AsInteger;
    vNewQty     := 0;
    vOldQty     := 0;

    with qryProductBatch do
      begin
      Close;
      Parameters.ParamByName('ProductCode_ID').Value   := vProductID;
      Open;
      if (not VarIsnull(qryReturnsItems.FieldByName('ProductBatch_ID').AsInteger)) then
       begin
       //Locate the right one
       if Locate('ProductBatch_ID', qryReturnsItems.FieldByName('ProductBatch_ID').AsInteger, []) then
        begin
        Edit;
        vOldQty := FieldByName('QtyOnHand_int').AsInteger;
        if vAdjQty > vOldQty then
          begin
          vAdjQty := vOldQty;
          qryReturnsItems.Edit;
          qryReturnsItems.FieldByName('QtyReturned_int').AsInteger:= vOldQty;
          qryReturnsItems.Post;
          end;
        FieldByName('QtyOnHand_int').AsInteger := FieldByName('QtyOnHand_int').AsInteger - vAdjQty;
        if FieldByName('QtyOnHand_int').AsInteger < 0 then FieldByName('QtyOnHand_int').AsInteger := 0;
        Post;
        end;
       end;
       if (FieldByName('QtyOnHand_int').AsInteger = 0) then
        Delete;
      end;

//Get the remaining total quantity for the product
     with qryTotalQtyonHand do
      begin
      Close;
      Parameters.ParamByName('ProductCode_ID').Value := vProductID;
      Open;
      if recordCount > 0 then
       vNewQty := fieldByName('QtyOnHand_int').AsInteger
      else
       vNewQty := 0;
      Close;
      end;

     vAuditData.Quantity_int     := (-1) * vAdjQty;  //Enter as a negative transaction in audit trail
     vAuditData.ProductCode_ID   := vProductID;
     vAuditData.Item_ID          := vItemsID; // should be id of variance
     vAuditData.Value_mon        := (-1) * vCost;
     vAuditData.SystemStore_ID   := MainDm.tblMainSystem.FieldByName('SystemStore_ID').AsInteger; //SM  13/08/2007
     vAuditData.Demander_ID      := 0;
     vAuditData.Supplier_ID      := vSupplierID;
     vAuditData.Type_str         := 'R';
     vAuditData.Reference_str    := Trim(qryReturnsWorker.FieldByName('ReturnsNo_str').AsString); //FloatToStr(vProductID) + '_' + DateToStr(Date);
     vAuditData.DemanderSupplier_str := 'V';
     vAuditData.ProductCode_str  := FieldByName('ProductCode_Str').AsString;
     vAuditData.VoucherNo_str    := 'Returns (' + vType + ')';
     vAuditData.Date_dat         := Now;
     vAuditData.QuantityOnHand_int := vNewQty;
     vAuditData.User_str         := FUserName;
     vAuditData.NSN_Str          := FieldByName('NSN_str').AsString;
     vAuditData.ECN_str          := FieldByName('ECN_str').AsString;
     vAuditData.ICN_str          := FieldByName('ICN_str').AsString;
     vAuditData.BatchNumber_str  := vBatchNumber;
     vAuditData.ExpiryDate_dat   := vExpiryDate;
     MainDM.WriteAuditData(vAuditData);
     end;
     //end of if Returned Qty > 0
     qryReturnsItems.Next;
     end;
    end;
  except
   AdoReturnsConn.RollbackTrans;
  end;   
 Screen.Cursor := Save_Cursor;
 UpdateReturnsItemsTotals;
 Result := True;
end;

procedure TReturnsDm.qryReturnsCatalogFinanceOfficer_IDChange(
  Sender: TField);
begin

end;

//Add another batch item, by duplicating the item currently selected. 
procedure TReturnsDm.AddAnotherBatchItem(ReturnID: integer; ProductCodeID : integer);
begin

 with stpAddAnotherBatchItem do
  begin
  Parameters.ParamByName('@ReturnsID').Value            := ReturnID;
  Parameters.ParamByName('@ProductCodeID').Value        := ProductCodeID;
  ExecProc;
  end;

end;

procedure TReturnsDm.atnAddAnotherBatchItemExecute(Sender: TObject);
var vRet, vProduct: integer;
begin

 vRet := qryReturnsItems.FieldByName('Returns_ID').AsInteger;
 vProduct := qryReturnsItems.FieldByName('ProductCode_ID').AsInteger;

 AddAnotherBatchItem(vRet, vProduct);

 qryReturnsItems.Close;
 qryReturnsItems.Open;

 UpdateReturnsItemsTotals;
 
end;

procedure TReturnsDm.qryReturnsItemsQtyReturned_intChange(Sender: TField);
begin
 with qryReturnsItems do
  begin
  FieldByName('ExtendedCost_mon').AsFloat := FieldByName('QtyReturned_int').AsInteger * FieldByName('PackCost_mon').AsFloat;
  end;
end;

procedure TReturnsDm.qryReturnsCatalogAfterScroll(DataSet: TDataSet);
begin
 vCurrentRecord := qryReturnsCatalog.FieldByName('Returns_ID').AsInteger;
end;

procedure TReturnsDm.PrintReturnsOut;
begin
 with qryReturnsCatalog do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;

 with qryReturnsReport do
  begin
  Close;
  Prepared := False;
  Parameters.ParamByName('@ReturnsID').Value := vCurrentRecord;
  Prepared := True;
  Open;
  end;
  
 ppReportReturnOut.Print;

end;

procedure TReturnsDm.atnPrintReturnOutReportExecute(Sender: TObject);
begin
 PrintReturnsOut;
end;

procedure TReturnsDm.DeleteAllItems;
begin

if not CheckComplete then
 if MessageDlg('You are about to remove all the items from the transaction. Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  with stp_DeleteAllItems do
   begin
   Prepared := False;
   Parameters.ParamByName('@ReturnsID').Value := vCurrentRecord;
   Prepared := True;
   ExecProc;
   end;
// AddEditHistory();

  LoadReturnsItems;
  UpdateReturnsItemsTotals;
  end;

end;

procedure TReturnsDm.atnDeleteAllItemsExecute(Sender: TObject);
begin
 DeleteAllItems;
end;

procedure TReturnsDm.atnSelectInvoiceExecute(Sender: TObject);
var
  vReceiptID: Integer;
begin
//  ReturnsDetailFrm.dbgReturnsItems.DataSource := dsReceiptItems;
  //BUG ISSUE 2177
  with qryReturnsWorker do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;
   //end Bug Issue 2177

  LoadReceipts(FStartDate, FEndDate);
  if tblReceipts.RecordCount > 0 then
  begin
    if ReturnsSelectInvoiceFrm.SelectInvoice(vReceiptID) then
    begin
      LoadReceiptItems(vReceiptID);
      AddReturnItemsFromInvoice;
    end;
  end
  else
    MessageDlg('There are no invoices for this suplier.', mtInformation, [mbOK], 0);
end;

procedure TReturnsDm.LoadReceipts(startDate, endDate: TDateTime);
begin
  with tblReceipts do
  begin
    Close;
    Prepared := False;
    Parameters.ParamByName('Startdate').Value   := startDate;
    Parameters.ParamByName('EndDate').Value     := endDate;
    Parameters.ParamByName('Supplier_ID').Value := qryReturnsWorker.FieldByName('Supplier_ID').Value;;
    Prepared := True;
    Open;
    First;
  end;
end;

procedure TReturnsDm.LoadReceiptItems(ReceiptNo_ID: Integer);
begin
  with qryReceiptItems do
  begin
    Close;
    Prepared := False;
    Parameters.ParamByName('ReceiptNo_ID').Value := tblReceipts.FieldByName('ReceiptNo_ID').Value;
    Prepared := True;
    Open;
  end;
end;

procedure TReturnsDm.AddReturnItemsFromInvoice;
var
  vRetID     : Double;
  vProductID : Double;
begin
  with qryReceiptItems do
  begin
    First;
    while not(Eof) do
    begin
      vRetID     := qryReturnsCatalog.FieldByName('Returns_ID').Value;
      vProductID := FieldByName('ProductCode_ID').Value;

      AddReturnsItem(vRetID, vProductID);

      qryReturnsItems.Close;
      qryReturnsItems.Prepared := False;
      qryReturnsItems.Parameters.ParamByName('Returns_ID').Value := vRetID;
      qryReturnsItems.Prepared := True;
      qryReturnsItems.Open;

      UpdateReturnsSubTotals;
      UpdateReturnsItemsTotals;
      AddEditHistory(HST_ADD, 'Adding product(s)', ADD_RET);

      qryReturnsItems.Locate('ProductCode_ID;Returns_ID', VarArrayOf([vProductID, vRetID]), []);

      Next;
    end;
  end;
end;

procedure TReturnsDm.UnLockReturns;
begin
 with qryReturnsWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  end;

 if ReturnsDetailFrm.Active then
  ReturnsDetailFrm.Close;
end;

procedure TReturnsDm.UnLockReturnsMain;
begin
 with qryReturnsCatalog do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('CheckedOutBy_ID').AsFloat      := 0;
  FieldByName('CheckedOutName_str').AsString  := '';
  FieldByName('CheckedOut_bol').AsBoolean     := False;
  if State in [dsEdit, dsInsert] then Post;
  Refresh;
  end;
end;

procedure TReturnsDm.atnUnLockReturnsExecute(Sender: TObject);
begin
 UnLockReturns;
end;

function TReturnsDm.IsRecordLocked: Boolean;
begin

 with qryIsRecordLocked do
  begin
  Close;
  Parameters.ParamByName('Returns_ID').Value := vCurrentRecord;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;   
end;

procedure TReturnsDm.qryReturnsWorkerFinanceOfficer_IDChange(
  Sender: TField);
begin
  qryReturnsWorker.FieldByName('FinanceOfficer_str').AsString   := tblSystemUsers.fieldByName('Description').AsString;
end;

procedure TReturnsDm.qryReturnsWorkerStoreOfficer_IDChange(Sender: TField);
begin
 qryReturnsWorker.FieldByName('StoreOfficer_str').AsString     := tblSystemUsers.fieldByName('Description').AsString;
end;

procedure TReturnsDm.atnUnLockReturnsMainExecute(Sender: TObject);
begin
 UnLockReturnsMain;
end;

function TReturnsDm.TotalOnHoldBatch(ProductBatch_ID: integer): Integer;
var
 vOnHoldReq, vOnHoldRet: integer;
begin
 //
 with qryBatchOnHold do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := ProductBatch_ID;
  Open;

  if RecordCount > 0 then
   vOnHoldReq:= FieldByName('SumQtyOrdered_int').AsInteger
  else
   vOnHoldReq := 0;
  end;

 with qryBatchOnHoldReturnsTotal do
  begin
  Close;
  Parameters.ParamByName('ProductBatch_ID').Value := ProductBatch_ID;
  Open;

  if RecordCount > 0 then
   vOnHoldRet := FieldByName('SumQtyReturned_int').AsInteger
  else
   vOnHoldRet := 0;
  end;

 Result := vOnHoldReq + vOnHoldRet; 

end;

function TReturnsDm.TotalOnHoldProduct(ProductCode_ID: integer): Integer;
begin
 //

end;

function TReturnsDm.QtyReturned: Integer;
begin
//Use the current Returned amount
 with qryReturnsItems do
  begin
  if FieldByName('QtyReturned_int').OldValue > 0 then
     Result := FieldByName('QtyReturned_int').OldValue
  else
     Result := 0;
  end;

end;

//Add another batch item, by duplicating the item currently selected. 
procedure TReturnsDm.AddAnotherProductBatch(ReturnID: integer; ProductCodeID : integer;
        ProductBatchID: integer; Batch: string; expiryDate: TDateTime; qty : integer);
begin

 with stpAddBatchITem do
  begin
  Parameters.ParamByName('@ReturnsID').Value            := ReturnID;
  Parameters.ParamByName('@ProductCodeID').Value        := ProductCodeID;
  Parameters.ParamByName('@ProductBatchID').Value       := ProductBatchID;
  Parameters.ParamByName('@batchnumber').Value          := Batch;
  Parameters.ParamByName('@expiryDate').Value           := expiryDate;
  Parameters.ParamByName('@QTY').Value                  := qty;
  ExecProc;
  end;

end;

end.
