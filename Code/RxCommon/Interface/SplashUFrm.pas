unit SplashUFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomSimpleLabel, LMDSimpleLabel, jpeg, StdCtrls,
  RzStatus;

type
  TSplashFrm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    RzVersionInfo1: TRzVersionInfo;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashFrm: TSplashFrm;

implementation

{$R *.DFM}

procedure TSplashFrm.FormShow(Sender: TObject);
begin
 //
 //Label1.Caption := 'Version' + ': ' + RzVersionInfo1.FileVersion;
 Label1.Caption := 'Version' + ': ' + RzVersionInfo1.ProductVersion;
end;

end.
