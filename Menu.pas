unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TF_Menu = class(TForm)
    Panel1: TPanel;
    SplitView1: TSplitView;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    procedure CreateParams(var Params: TCreateParams); override;

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_Menu: TF_Menu;

implementation

{$R *.dfm}

{ TF_Menu }

procedure TF_Menu.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent:=GetDesktopWindow
end;


end.
