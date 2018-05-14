unit ProductBatchSelctUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, dxExEdtr, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxCntner, ElPopBtn, ExtCtrls, ActnList, Menus,
  DBActns, DB, ADODB;

type
  TProductBatchSelectFrm = class(TForm)
    Cancel: TButton;
    Panel1: TPanel;
    ActionList1: TActionList;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1BatchNumber_str: TdxDBGridMaskColumn;
    dxDBGrid1Expiry_dat: TdxDBGridDateColumn;
    dxDBGrid1ProductBatch_ID: TdxDBGridMaskColumn;
    dxDBGrid1PackCost: TdxDBGridCurrencyColumn;
    PopupMenu1: TPopupMenu;
    atnRequeryShowAll1: TMenuItem;
    Button1: TButton;
    atnSaveClose: TAction;
    dxDBGrid1ProductCode_ID: TdxDBGridColumn;
    edtIssued: TEdit;
    dxDBGrid1QtyIssued_int: TdxDBGridColumn;
    Label2: TLabel;
    lblECN: TLabel;
    lblICN: TLabel;
    atnCancelClose: TAction;
    lblDescrip: TLabel;
    dxDBGrid1BatchQty: TdxDBGridColumn;
    Panel3: TPanel;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    atnDataSetPost: TDataSetPost;
    atnDataSetCancel: TDataSetCancel;
    Timer1: TTimer;
    stpRemveItems: TADOQuery;
    qryTotalIssued: TADOQuery;
    lblAvailable: TLabel;
    Label3: TLabel;
    lblRequested: TLabel;
    edtRequested: TEdit;
    atnPostRecord: TAction;
    atnCancelReceord: TAction;
    procedure FormShow(Sender: TObject);
    procedure atnSaveCloseExecute(Sender: TObject);
    procedure atnCancelCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure dxDBGrid1QtyIssued_intChange(Sender: TObject);
    procedure atnPostRecordExecute(Sender: TObject);
    procedure atnCancelReceordExecute(Sender: TObject);
  private
    { Private declarations }
    procedure restartTimer;
    procedure CancelAll;
    procedure SaveOnlyIssued;
    procedure DeleteItemFromReq(vReqID: integer; vBatchID : integer);

  public
    descrip, ecn, icn, bin : string;
    ProductID, RequisitionID, requestedQty, totalIssued, BatchOnHold, BatchOnHoldReturns, BatchIssued, BatchQty, Available : integer;
    function BatchIDIssued : integer;
    procedure UpdateTotals;
   

  end;

var
  ProductBatchSelectFrm: TProductBatchSelectFrm;

implementation

uses RequisitionDetailUFrm, RequisitionUDM, MainUDM;

{$R *.dfm}

procedure TProductBatchSelectFrm.restartTimer;
begin

 with Timer1 do
  begin
  Enabled       := False;
  Interval      := 600000;
  Enabled       := True;
  end;

end;

procedure TProductBatchSelectFrm.FormShow(Sender: TObject);
var
 i : integer;
begin
 Timer1.Enabled := True;
 //06/12/2011    SM
 if RequisitionDM.FUseEditableExitPrice then
  dxDBGrid1PackCost.DisableEditor := False
 else
  dxDBGrid1PackCost.DisableEditor := True;
 
 totalIssued    := 0;
 BatchIssued    := 0;
 Available      := 0;
 requestedQty   := 0;

 descrip := RequisitionDM.stpStockControlRequisitionItems.FieldByName('Description_str').AsString;
 ecn    := RequisitionDM.stpStockControlRequisitionItems.FieldByName('ECN_str').AsString;
 icn    := RequisitionDM.stpStockControlRequisitionItems.FieldByName('ICN_str').AsString;


 ProductID := RequisitionDM.stpStockControlRequisitionItems.FieldByName('ProductCode_ID').AsInteger;
 RequisitionID := RequisitionDM.stpStockControlRequisitionItems.FieldByName('Requisition_ID').AsInteger;

 requestedQty := RequisitionDM.tmpItems.fieldByName('QtyOrdered_int').AsInteger;
 
 BatchQty := RequisitionDM.tmpItems.fieldByName('BatchQty').AsInteger;

 BatchOnHold := RequisitionDM.TotalOnHoldBatch;

 ProductBatchSelectFrm.Caption := 'Available Product Batches for '+ descrip;

 lblECN.Caption := ecn;
 lblICN.Caption := icn;
 lblDescrip.Caption := descrip;

 edtRequested.Text := IntToStr(requestedQty);

 UpdateTotals;

 dxDBGrid1.SetFocus;
 i := 0;
 dxDBGrid1.FocusedColumn := 3;

end;

procedure TProductBatchSelectFrm.atnSaveCloseExecute(Sender: TObject);
begin
with RequisitionDM.tmpItems do
 begin
 if not (state in [dsEdit, dsInsert]) then
  Edit;
 Post;
 end;

 SaveOnlyIssued;
 Close;

end;

procedure TProductBatchSelectFrm.atnCancelCloseExecute(Sender: TObject);
begin
  CancelAll;
  Close;
end;

procedure TProductBatchSelectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Timer1.Enabled := False;
end;

procedure TProductBatchSelectFrm.Timer1Timer(Sender: TObject);
begin
 //Cancel all tranasctions
 Close;
 
end;

procedure TProductBatchSelectFrm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 restartTimer;
end;

procedure TProductBatchSelectFrm.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 restartTimer;
end;

procedure TProductBatchSelectFrm.CancelAll;
var
 vCount : integer;
begin
 vCount := 0;

 with RequisitionDM.tmpItems do
  begin
  First;
  vCount := RecordCount;
  while not Eof do
   begin
   if vCount = 1 then
    begin
    Edit;
    FieldByName('ProductBatch_ID').Value := Null;
    FieldByName('BatchNumber_str').Value := Null;
    FieldByName('Expiry_dat').Value      := Null;
    FieldByName('QtyIssued_int').Value   := 0;
    Post;
    end
   else
    DeleteItemFromReq(FieldByName('Requisition_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);
   vCount := vCount - 1;
   Next;
   end;

  end;
end;

procedure TProductBatchSelectFrm.SaveOnlyIssued;
var
 vCount : integer;
begin
 vCount := 0;
 with RequisitionDM.tmpItems do
  begin
  First;

  while not Eof do
   begin
   if ((vCount = 0) and (totalIssued =0)) then
    begin
    Edit;
    FieldByName('ProductBatch_ID').Value := Null;
    FieldByName('BatchNumber_str').Value := Null;
    FieldByName('Expiry_dat').Value      := Null;
    FieldByName('QtyIssued_int').Value   := 0;
    Post;
    end;  

   if ((vCount = 0) AND (totalIssued > 0) AND (FieldByName('QtyIssued_int').AsInteger = 0)) then
    DeleteItemFromReq(FieldByName('Requisition_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);

   if ((vCount > 0) AND (FieldByName('QtyIssued_int').AsInteger = 0))  then
    DeleteItemFromReq(FieldByName('Requisition_ID').AsInteger, FieldByName('ProductBatch_ID').AsInteger);

   vCount := vCount + 1;
   UpdateTotals;
   Next;
   end;
  end;
end;

procedure TProductBatchSelectFrm.DeleteItemFromReq(vReqID: integer; vBatchID : integer);
begin

  with stpRemveItems do
   begin
   Parameters.ParamByName('RequisitionID').Value        := vReqID;
   Parameters.ParamByName('ProductBatchID').Value       := vBatchID;
   ExecSQL;
   end;

end;

procedure TProductBatchSelectFrm.UpdateTotals;
begin
 
 with qryTotalIssued do
  begin
  Close;
  Parameters.ParamByName('RequisitionID').Value := RequisitionID;
  Parameters.ParamByName('ProductCodeID').Value := ProductID;
  Open;

  if recordCount > 0 then
   totalIssued := fieldByName('TotQtyIssued').AsInteger;
  end;

  edtIssued.Text := IntToStr(totalIssued);
  BatchQty := RequisitionDM.tmpItems.fieldByName('BatchQty').AsInteger;

  BatchOnHold := RequisitionDM.TotalOnHoldBatch;

  BatchIssued := BatchIDIssued;
  Available := BatchQty - BatchOnHold + BatchIssued;
  if Available < 0 then
   Available := 0;
  //showmessage('issued: '+IntToStr(BatchIDIssued) + ' on hold: ' +IntToStr(BatchOnHold)+' qty: '+IntToStr(BatchQty));
  lblAvailable.Caption := IntToStr(Available);

end;

function TProductBatchSelectFrm.BatchIDIssued: integer;
begin

 if RequisitionDM.tmpItems.Active then
  Result := RequisitionDM.tmpItems.FieldByName('QtyIssued_int').AsInteger
 else
  Result := 0;
  
end;

procedure TProductBatchSelectFrm.dxDBGrid1Click(Sender: TObject);
begin
 UpdateTotals;
end;

procedure TProductBatchSelectFrm.dxDBGrid1QtyIssued_intChange(
  Sender: TObject);
begin
 UpdateTotals;
end;

procedure TProductBatchSelectFrm.atnPostRecordExecute(Sender: TObject);
begin
 with RequisitionDM.tmpItems do
  begin
  if state in [dsEdit, dsInsert] then
   Post;
  end;
end;

procedure TProductBatchSelectFrm.atnCancelReceordExecute(Sender: TObject);
begin
 with RequisitionDM.tmpItems do
  begin
  if state in [dsEdit, dsInsert] then
   Cancel;
  end;
end;

end.



