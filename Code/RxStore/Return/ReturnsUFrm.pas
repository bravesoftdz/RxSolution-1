unit ReturnsUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  ActnList, StdCtrls, Menus, ExtCtrls, RzBmpBtn, ComCtrls, ElPopBtn,
  DBActns, RzLabel;

type
  TReturnsFrm = class(TForm)
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    pnlReturnsPanel: TPanel;
    pnlToolBar: TPanel;
    ElSpeedButton4: TElSpeedButton;
    ElSpeedButton7: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    Shape4: TShape;
    ElSpeedButton12: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ElSpeedButton19: TElSpeedButton;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    dteStart: TDateTimePicker;
    Panel6: TPanel;
    dteEnd: TDateTimePicker;
    atnFirst: TDataSetFirst;
    atnLast: TDataSetLast;
    atnNext: TDataSetNext;
    atnPrior: TDataSetPrior;
    PopPrintMenu: TPopupMenu;
    N1: TMenuItem;
    atnColumnSelector: TAction;
    ElSpeedButton3: TElSpeedButton;
    dbgReturns: TdxDBGrid;
    dbgReturns_dat: TdxDBGridDateColumn;
    dbgReturns_str: TdxDBGridMaskColumn;
    dbgReturnsItemsNo_int: TdxDBGridMaskColumn;
    dbgReturnsPosted_bol: TdxDBGridCheckColumn;
    dbgReturnsTotalCost_mon: TdxDBGridCurrencyColumn;
    atnViewReturnsOut: TAction;
    atnAddNewReturns: TAction;
    dbgReturnsSupplierName_str: TdxDBGridColumn;
    dbgReturnsPosted_dat: TdxDBGridColumn;
    PrintReturnOut1: TMenuItem;
    PrintReturnOut2: TMenuItem;
    dbgReturnsReference_str: TdxDBGridColumn;
    Panel1: TPanel;
    RzBmpButton1: TRzBmpButton;
    RzLabel1: TRzLabel;
    atnUnLockRecord: TAction;
    N2: TMenuItem;
    UnLockReturns1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure atnColumnSelectorExecute(Sender: TObject);
    procedure dteStartChange(Sender: TObject);
    procedure dteEndChange(Sender: TObject);
    procedure atnViewReturnsOutExecute(Sender: TObject);
    procedure atnAddNewReturnsExecute(Sender: TObject);
    procedure atnUnLockRecordExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FRecordUnlocking: Boolean;
  public
    { Public declarations }
  end;

var
  ReturnsFrm: TReturnsFrm;

implementation

uses ReturnsUDM, RxSolutionUFrm, RxSolutionSecurityClass,
DialogGridColumnSelectorUFrm, ReturnsDetailUFrm;

{$R *.dfm}


procedure TReturnsFrm.FormShow(Sender: TObject);
 var
 atnEnabled: Boolean;
begin

 dbgReturns.Height := pnlReturnsPanel.Height - (Panel1.Height + pnlToolBar.Height);

 dteStart.DateTime   := Date - 60;
 dteEnd.DateTime     := Date;
 //send the filter here
 ReturnsDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);

 with RxSolutionFrm.Security do
  atnEnabled := GetUserAccessLevel(MODULE_STORE_RETURNS) > USER_BROWSER;

 with RxSolutionFrm.Security do
  FRecordUnlocking := GetUserAccessLevel(MODULE_RECORDUNLOCKING) > USER_BROWSER;

// atnUnLockRecord.Visible := FRecordUnlocking;

 atnAddNewReturns.Enabled := atnEnabled;     
end;

procedure TReturnsFrm.atnColumnSelectorExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgReturns;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TReturnsFrm.dteStartChange(Sender: TObject);
begin

if ReturnsDM.qryReturnsCatalog.Active then
 ReturnsDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);

end;

procedure TReturnsFrm.dteEndChange(Sender: TObject);
begin

if ReturnsDM.qryReturnsCatalog.Active then
 ReturnsDM.DataConnect(dteStart.DateTime, dteEnd.DateTime);

end;

procedure TReturnsFrm.atnViewReturnsOutExecute(Sender: TObject);
begin

 if not (ReturnsDm.IsRecordLocked) then
  begin
  ReturnsDM.EditReturns;
  ReturnsDetailFrm.ShowModal;
  end
 else
  ShowMessage('Record is being used by another user!');
 
end;

procedure TReturnsFrm.atnAddNewReturnsExecute(Sender: TObject);
begin 
 ReturnsDM.AddReturns;
 ReturnsDetailFrm.ShowModal;
end;

procedure TReturnsFrm.atnUnLockRecordExecute(Sender: TObject);
begin 
 with ReturnsDm do
  begin
  UnLockReturnsMain;
  end;

end;

procedure TReturnsFrm.FormResize(Sender: TObject);
begin
 dbgReturns.Height := pnlReturnsPanel.Height - (Panel1.Height + pnlToolBar.Height); 
end;

end.

