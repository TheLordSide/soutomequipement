unit Role;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Menus;

type
  TF_role = class(TForm)
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    RelativePanel1: TRelativePanel;
    rolename: TEdit;
    SpeedButton1: TSpeedButton;
    RelativePanel2: TRelativePanel;
    PopupMenu1: TPopupMenu;
    Supprimerlerole1: TMenuItem;
    Modifierlerole1: TMenuItem;
    CRDBGrid1: TCRDBGrid;
    procedure Emptyrole(rolename: TEdit);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Enregistrerrole(rolename: TEdit);
    procedure Supprimerlerole1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_role: TF_role;

implementation

{$R *.dfm}

uses UDM;

procedure TF_role.Emptyrole(rolename: TEdit);
begin
  if rolename.Text = '' then
  begin
    ShowMessage('Le nom du role est vide');
  end
  else
  begin
    Enregistrerrole(rolename);
  end;
end;

procedure TF_role.Enregistrerrole(rolename: TEdit);
begin
  DM.UniQuery1.Close;
  DM.UniQuery1.Fields.Clear;
  DM.UniQuery1.SQL.Text := 'Select * from role where nomrole = :rolename';
  DM.UniQuery1.parambyname('rolename').asstring := rolename.Text;
  DM.UniQuery1.ExecSQL;
  if DM.UniQuery1.RecordCount = 0 then
  begin

  end
  else
  begin
    ShowMessage('Le role que vous voulez enregistrer exite deja')
  end;
end;

procedure TF_role.SpeedButton1Click(Sender: TObject);
begin
  Emptyrole(rolename);
end;

procedure TF_role.Supprimerlerole1Click(Sender: TObject);
var
  norm: Boolean;
begin

end;


end.
