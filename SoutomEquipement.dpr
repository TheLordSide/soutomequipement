program SoutomEquipement;

uses
  Vcl.Forms,
  Login in 'Login.pas' {F_login},
  UDM in 'UDM.pas' {DM: TDataModule},
  Menu in 'Menu.pas' {F_Menu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Menu, F_Menu);
  Application.Run;
end.
