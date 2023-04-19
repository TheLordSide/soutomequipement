unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TF_login = class(TForm)
    Panel_login: TPanel;
    Image1: TImage;
    GridPanel1: TGridPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    GRID_USER_PASS: TGridPanel;
    username: TEdit;
    password: TEdit;
    CheckBox1: TCheckBox;
    procedure ChampsVide(username, password: TEdit);
    procedure Button1Click(Sender: TObject);
    procedure userexistant(username, password: TEdit);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

uses UDM, Menu;

procedure TF_login.BitBtn1Click(Sender: TObject);
begin
  ChampsVide(username, password);
  userexistant(username, password)
end;

procedure TF_login.BitBtn2Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TF_login.Button1Click(Sender: TObject);
begin
  ChampsVide(username, password);
  userexistant(username, password)
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
  DM.UniConnection.Connected := True;
  DM.UniQuery1.close;
  DM.UniQuery1.sql.Clear;
  try
    DM.UniQuery1.sql.Text :=
      'select * from  utilisateur where Nomuti = :username and Mdp = :password';
    DM.UniQuery1.parambyname('username').asstring := username.Text;
    DM.UniQuery1.parambyname('password').asstring := password.Text;
    DM.UniQuery1.open;

    if DM.UniQuery1.RecordCount = 0 then
    Begin
      ShowMessage
        ('Le compte utilisateur n''existe pas dans la base de donn�es');
    end
    else
    begin
      F_Menu := TF_menu.Create(Self);
      try
        F_login.Hide;
        username.Clear;
        password.Clear;
        F_Menu.ShowModal;
      finally
        F_Menu.Free;
        F_login.show;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

end.
