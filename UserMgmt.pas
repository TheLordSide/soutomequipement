unit UserMgmt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TF_users = class(TForm)
    Panel1: TPanel;
    RelativePanel1: TRelativePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridPanel1: TGridPanel;
    RelativePanel2: TRelativePanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  F_users: TF_users;

implementation

{$R *.dfm}
{ TF_users }

procedure TF_users.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow

end;

end.