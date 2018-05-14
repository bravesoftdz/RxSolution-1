unit StdRegimen_StdDoseFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, StdCtrls, Mask, RzEdit, RzDBEdit, cxContainer, cxEdit,
  cxCheckBox, cxDBEdit, RzBckgnd, dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl,
  dxTL, dxCntner, cxPC, cxControls, ElPopBtn, DBCtrls, RzDBCmbo, RzButton,
  RzRadChk, RzDBChk, RzLine, ExtCtrls, RzLabel, RzDBLbl, DB, RzDlgBtn,
  ActnList, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, PrescriptionUtilities;

type
  TfrmStdDose = class(TForm)
    pnlRXBackground: TPanel;
    pnlForm_Footer: TPanel;
    pnlForm_Footer_Divider: TShape;
    lblItemCount: TRzLabel;
    pnlForm_Detail: TPanel;
    pnlToolbar: TPanel;
    btnLast: TElSpeedButton;
    btnFirst: TElSpeedButton;
    btnAdd: TElSpeedButton;
    shpToolber: TShape;
    btnRefresh: TElSpeedButton;
    btnPrior: TElSpeedButton;
    btnNext: TElSpeedButton;
    btnEdit: TElSpeedButton;
    btnDelete: TElSpeedButton;
    Panel8: TPanel;
    Panel10: TPanel;
    pnlForm_Header: TPanel;
    lblView_Standard: TLabel;
    dxgStandardRegimen: TdxDBGrid;
    FRM_StdRegimen: TDataSource;
    dxgStandardRegimenFrmDescription_Str: TdxDBGridColumn;
    dxgStandardRegimenDspDescription_Str: TdxDBGridColumn;
    rzdbMain: TRzDialogButtons;
    PopupMenu1: TPopupMenu;
    aclRegiminDetail: TActionList;
    actData_First: TAction;
    actData_Prior: TAction;
    actData_Next: TAction;
    actData_Last: TAction;
    actData_Add: TAction;
    actData_Delete: TAction;
    actData_Refresh: TAction;
    actData_Print: TAction;
    actData_Edit: TAction;
    Edit1: TMenuItem;
    Print1: TMenuItem;
    lblProtocolHeading: TLabel;
    lne_01: TRzLine;
    ElSpeedButton1: TElSpeedButton;
    atnViewRegimenEditHistory: TAction;
    dxgStandardRegimenFrmICDCode_Str: TdxDBGridColumn;
    procedure pnlRXBackgroundResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actData_EditExecute(Sender: TObject);
    procedure actData_FirstExecute(Sender: TObject);
    procedure actData_PriorExecute(Sender: TObject);
    procedure actData_NextExecute(Sender: TObject);
    procedure actData_LastExecute(Sender: TObject);
    procedure actData_AddExecute(Sender: TObject);
    procedure actData_DeleteExecute(Sender: TObject);
    procedure atnViewRegimenEditHistoryExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckIfRegimenBeingUsed : Boolean;
  end;

  TStdDose = class(TObject)
  public
    class function Show(_userRights: Boolean; var f: TRXMultipleReg): Boolean; overload;
    class function Show: Boolean; overload;
  end;

implementation

uses StdRegimenDM, ADODB;

{$R *.dfm}

procedure TfrmStdDose.pnlRXBackgroundResize(Sender: TObject);
const
  FFrameWidth = 5;

var
  wid : integer;
  hgt : integer;
  halfForm : integer;
begin


  wid := (Sender as TPanel).Width;
  hgt := (Sender as TPanel).Height;

  halfForm := pnlForm_Header.Width div 2;
  pnlForm_Header.Left := (wid div 2) - halfForm;
  pnlForm_Header.Top := FFrameWidth;

  pnlForm_Footer.Left := (wid div 2) - halfForm;
  pnlForm_Footer.Top := hgt - pnlForm_Footer.Height - FFrameWidth ;

  pnlForm_Detail.Left   := (wid div 2) - halfForm;
  pnlForm_Detail.Top    := pnlForm_Header.Top + pnlForm_Header.Height + 1;
  pnlForm_Detail.Height := (pnlForm_Footer.Top - pnlForm_Detail.Top) -1 ;

end;

procedure TfrmStdDose.FormShow(Sender: TObject);
begin
  pnlRXBackground.Align := alClient;
end;

class function TStdDose.Show(_userRights: Boolean; var f: TRXMultipleReg) : Boolean;
var
  frmStdDose: TfrmStdDose;
  i: integer;
begin

  Result := False;
  try
  frmStdDose := TfrmStdDose.Create(nil);
    try      
    //******* Enable/Disable edit/add/delete actions depending on user rights
    if  _userRights then
    else
    begin
       frmStdDose.btnAdd.Enabled := False;
       frmStdDose.btnDelete.Enabled := False;
       frmStdDose.btnEdit.Enabled := False;
    end;
    //******* Look through the selected Regimen and return them
    if frmStdDose.ShowModal = mrOK then
        begin
        if (frmStdDose.dxgStandardRegimen.SelectedCount > 0) then
         begin
         SetLength(f, frmStdDose.dxgStandardRegimen.SelectedCount);

         with frmStdDose.dxgStandardRegimen.DataSource.DataSet do
           for i:=0 to (frmStdDose.dxgStandardRegimen.SelectedCount-1) do
            begin
            GotoBookmark(pointer(frmStdDose.dxgStandardRegimen.selectedrows[i]));
            f[i] := FieldByName('StdRegimen_ID').AsString;
            end;

         end
         else //if nothing was selected. Bring the first Item
          begin
          SetLength(f, 1);
          f[0] := frmStdDose.dxgStandardRegimen.DataSource.DataSet.FieldByName('StdRegimen_ID').AsString;
          end;     

        Result := True;
        end;
    except
      on E:Exception do raise Exception.Create('TStdDose.Show' + #13 + E.Message);
    end;
  finally
  frmStdDose.Free;
  end;

end;




class function TStdDose.Show : Boolean;
var
  frmStdDose: TfrmStdDose;

begin

  Result := False;
  try
  frmStdDose := TfrmStdDose.Create(nil);
    try
    if frmStdDose.ShowModal = mrOK then Result := True;
    except
      on E:Exception do raise Exception.Create('TStdDose.Show' + #13 + E.Message);
    end;
  finally
  frmStdDose.Free;
  end;

end;

        
procedure TfrmStdDose.actData_EditExecute(Sender: TObject);
begin
//MC Mankga -------15/08/2012
if (btnAdd.Enabled and btnDelete.Enabled and btnEdit.Enabled) then
begin
  dmStdReg.StandardRegimen_Edit;
end;
end;


procedure TfrmStdDose.actData_FirstExecute(Sender: TObject);
begin

  with dmStdReg.qryStdRegimen do
    try
    if not Bof then First;
    except
    end;

end;

procedure TfrmStdDose.actData_PriorExecute(Sender: TObject);
begin
  with dmStdReg.qryStdRegimen do
    try
    if not Bof then Prior;
    except
    end;

end;

procedure TfrmStdDose.actData_NextExecute(Sender: TObject);
begin
  with dmStdReg.qryStdRegimen do
    try
    if not Eof then Next;
    except
    end;

end;

procedure TfrmStdDose.actData_LastExecute(Sender: TObject);
begin
  with dmStdReg.qryStdRegimen do
    try
    if not Eof then Last;
    except
    end;

end;

procedure TfrmStdDose.actData_AddExecute(Sender: TObject);
begin
  with dmStdReg.qryStdRegimen do
    try
    Append;
    dmStdReg.StandardRegimen_Edit;
    except
    end;
end;

procedure TfrmStdDose.actData_DeleteExecute(Sender: TObject);
begin

if CheckIfRegimenBeingUsed then
  MessageDlg('Cannot delete the selected Regimen. It is being used by at least one protocol', mtWarning, [mbOk],0)
else
 if MessageDlg('Delete currently selected Regimen?', mtWarning, [mbYes, mbNo, mbCancel],0) = mrYes then
  with dmStdReg.qryStdRegimen do
    try
    Delete; 
    except
    end;

end;

function TfrmStdDose.CheckIfRegimenBeingUsed : Boolean;
begin

 with dmStdReg.qryCheckIfRegimenBeingUsed do
 begin
 Close;
 Parameters.ParamByName('@StdRegimenID').Value := dmStdReg.qryStdRegimen.FieldByName('StdRegimen_ID').Value;
 Open;

 if RecordCount > 0 then
  Result := True  
 else
  Result := False;
 end;
 
end;

procedure TfrmStdDose.atnViewRegimenEditHistoryExecute(Sender: TObject);
begin
 dmStdReg.RegimenViewEditHistory;
end;

end.
