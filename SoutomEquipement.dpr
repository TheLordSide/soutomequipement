program SoutomEquipement;

uses
  Vcl.Forms,
  Login in 'Login.pas' {F_login},
  UDM in 'UDM.pas' {DM: TDataModule},
  Menu in 'Menu.pas' {F_Menu},
  Admin in 'Admin.pas' {F_admin},
  UserMgmt in 'UserMgmt.pas' {F_users},
  Role in 'Role.pas' {F_role},
  Facture in 'Facture.pas' {F_facture},
  Societe in 'Societe.pas' {F_societe};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Menu, F_Menu);
  Application.CreateForm(TF_admin, F_admin);
  Application.CreateForm(TF_users, F_users);
  Application.CreateForm(TF_role, F_role);
  Application.CreateForm(TF_facture, F_facture);
  Application.CreateForm(TF_societe, F_societe);
  Application.Run;
end.
