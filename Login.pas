unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TF_login = class(TForm)
    username: TEdit;
    password: TEdit;
    Panel_login: TPanel;
    Button1: TButton;
    Image1: TImage;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

end.
