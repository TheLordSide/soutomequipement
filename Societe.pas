unit Societe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.WinXPanels, Vcl.ComCtrls;

type
  TF_societe = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GridPanel1: TGridPanel;
    CardPanel1: TCardPanel;
    Card1: TCard;
    RelativePanel2: TRelativePanel;
    Image1: TImage;
    RelativePanel3: TRelativePanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    NumFiscal: TEdit;
    Designation: TEdit;
    RCCM: TEdit;
    GridPanel2: TGridPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    TabSheet2: TTabSheet;
    GridPanel3: TGridPanel;
    CRDBGrid1: TCRDBGrid;
    Panel2: TPanel;
    SearchBox1: TSearchBox;
    RelativePanel1: TRelativePanel;
    email: TEdit;
    tel: TEdit;
    adresse: TEdit;
    procedure societeExistant(NumFiscal,RCCM,designation,tel,adresse,email:TEdit);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  F_societe: TF_societe;

implementation

{$R *.dfm}

uses UDM;

procedure TF_societe.societeExistant(NumFiscal, RCCM, designation, tel, adresse,
  email: TEdit);
begin
  if (NumFiscal.Text <> '') or (RCCM.Text <> '') or
    (designation.Text <> '') then
  begin
    DM.UniQuery1.Close;
    DM.UniQuery1.Fields.Clear;
    DM.UniQuery1.SQL.Text :=
      'Select * from societe where numfiscal = :NumFiscal and RCCM =:RCCM and nom=:designation';
    DM.UniQuery1.parambyname('username').asstring := pseudo.Text;
    DM.UniQuery1.parambyname('username').asstring := pseudo.Text;
    DM.UniQuery1.parambyname('username').asstring := pseudo.Text;
    DM.UniQuery1.ExecSQL;
    if DM.UniQuery1.RecordCount = 0 then
    begin
      DM.T_utilisateur.Active := true;
      DM.T_utilisateur.Append;
      // Ajouter les valeurs des champs de la table utilisateur ici
      DM.T_utilisateur.FieldByName('Nomuti').asstring := pseudo.Text;
      DM.T_utilisateur.FieldByName('Mdp').asstring := password.Text;
      DM.T_utilisateur.FieldByName('statut').asstring := 'active';
      DM.T_utilisateur.FieldByName('role').asstring := role.Text;
      DM.T_utilisateur.FieldByName('datecreation').AsDateTime := Now();

      DM.T_utilisateur.Post; // Enregistrer l'utilisateur dans la table
      ShowMessage('Nouvel utilisateur enregistr� avec succ�s !');
    end
    else
    begin
      ShowMessage('L'' utilisateur que vous voulez enregistrer exite deja')
    end;
  end
  else
  begin
    ShowMessage('Vous avez un ou plusieurs champs vides');
  end;

end;

end.