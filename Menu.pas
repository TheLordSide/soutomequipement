unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Imaging.pngimage;

type
  TF_Menu = class(TForm)
    Panel1: TPanel;
    SplitView1: TSplitView;
    Image1: TImage;
    CardPanel1: TCardPanel;
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
