unit Admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Imaging.pngimage;

type
  TF_admin = class(TForm)
    Panel1: TPanel;
    RelativePanel1: TRelativePanel;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Options1: TMenuItem;
    Deconnexion1: TMenuItem;
    Quitter1: TMenuItem;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    GridPanel2: TGridPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Apparence1: TMenuItem;
    hme1: TMenuItem;
    Image5: TImage;
    Image6: TImage;
    procedure Quitter1Click(Sender: TObject);
    procedure Deconnexion1Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure gererlesroles1Click(Sender: TObject);
    procedure grer1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_admin: TF_admin;

implementation

{$R *.dfm}

uses Login, Menu, UDM, UserMgmt, Role, Facture, Societe;

procedure TF_admin.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow
end;

procedure TF_admin.Deconnexion1Click(Sender: TObject);
begin
  F_admin.hide;
  F_login.show;
end;

procedure TF_admin.gererlesroles1Click(Sender: TObject);
begin
  F_role.ShowModal;
end;

procedure TF_admin.grer1Click(Sender: TObject);
begin
  F_users := TF_users.Create(Self);
  try
    F_admin.hide;
    F_users.ShowModal;
  finally
    F_users.Free;
    F_admin.show;
  end;
end;

procedure TF_admin.Image1Click(Sender: TObject);
begin
  F_facture := TF_facture.Create(Self);
  try
    F_admin.hide;
    F_facture.ShowModal;
  finally
    F_facture.Free;
    F_admin.show;
  end;
end;

procedure TF_admin.Image2Click(Sender: TObject);
begin
  F_users := TF_users.Create(Self);
  try
    F_admin.hide;
    F_users.ShowModal;
  finally
    F_users.Free;
    F_admin.show;
  end;
end;

procedure TF_admin.Image5Click(Sender: TObject);
begin
  F_societe := TF_societe.Create(Self);
  try
    F_admin.hide;
    F_societe.ShowModal;
  finally
    F_societe.Free;
    F_admin.show;
  end;
end;

procedure TF_admin.Quitter1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
