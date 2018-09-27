unit u_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfmMain = class(TForm)
    mMain: TMainMenu;
    miFile: TMenuItem;
    miExit: TMenuItem;
    sbFooter: TStatusBar;
    miActions: TMenuItem;
    miNormalForm: TMenuItem;
    miTransfer: TMenuItem;
    miBinary: TMenuItem;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    procedure miExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure miAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses uAbout;

{$R *.fmx}

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  mr : TModalResult;
begin
  mr := MessageDlg ('Вы действительно хотите выйти?', TMsgDlgType.mtInformation, mbOKCancel, 0);
  case mr of
    mrOk : canclose:=true;
    mrCancel : canclose:=false;
  end;
end;

procedure TfmMain.miAboutClick(Sender: TObject);
var
  fmAbout: TfmAbout;
begin
  fmAbout := TfmAbout.Create(Self);
  fmAbout.ShowModal();

  fmAbout.Destroy();
end;

procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close;
end;

end.
