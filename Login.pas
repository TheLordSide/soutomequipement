unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TF_login = class(TForm)
    username: TEdit;
    password: TEdit;
    Panel_login: TPanel;
    Button1: TButton;
    Image1: TImage;
    procedure ChampsVide(username, password: TEdit);
    procedure Button1Click(Sender: TObject);
    procedure userexistant(username, password: TEdit);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

uses UDM;

procedure TF_login.Button1Click(Sender: TObject);
begin
  ChampsVide(username, password)
end;

procedure TF_login.ChampsVide(username, password: TEdit);
begin

  if (username.Text = '') or (password.Text = '') then
  begin
    ShowMessage('Impossible de continuer car username / mot de passe vide');
    password.Clear;
    username.Clear;
    exit
  end;

end;

procedure TF_login.userexistant(username, password: TEdit);
begin
  DM.UniConnection.Connected:=True;
  Dm.UniQuery1.close;
  DM.UniQuery1.sql.clear;
  DM.uniquery1.sql.text:='select * from '

end;

end.
