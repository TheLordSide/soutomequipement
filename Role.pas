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
    procedure FormCreate(Sender: TObject);
    procedure Supprimerlerole1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
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
    DM.T_role.Active := True;
    DM.T_role.append;
    DM.T_role.FieldByName('nomrole').asstring := rolename.Text;
    DM.T_role.post;
  end
  else
  begin
    ShowMessage('Le role que vous voulez enregistrer exite deja')
  end;
end;

procedure TF_role.FormCreate(Sender: TObject);
begin
DM.UniDataSource1.dataset := DM.T_role;
end;

procedure TF_role.SpeedButton1Click(Sender: TObject);
begin
  Emptyrole(rolename);
end;

procedure TF_role.Supprimerlerole1Click(Sender: TObject);
var
  norm: Boolean;
begin
  if MessageDlg('�tes-vous s�r de vouloir supprimer ce r�le ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    norm := DM.T_role.Locate('idrole', DM.T_role.FieldByName('idrole').AsInteger, []);
    if norm then
    begin
      DM.T_role.Delete;
      ShowMessage('Le r�le a �t� supprim�.');
    end
    else
      ShowMessage('Le r�le n''a pas �t� trouv�.');
  end;
end;


end.
