unit Societe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure societeExistant(NumFiscal, RCCM, Designation, tel, adresse,
      email: TEdit);
    procedure clearChamps(NumFiscal, RCCM, Designation, tel, adresse,
      email: TEdit);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);

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

procedure TF_societe.clearChamps(NumFiscal, RCCM, Designation, tel, adresse,
  email: TEdit);
begin
  RCCM.Clear;
  Designation.Clear;
  NumFiscal.Clear;
  adresse.Clear;
  tel.Clear;
  email.Clear;
end;

procedure TF_societe.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM.T_utilisateur.Active := true;
  DM.UniDataSource1.DataSet := DM.T_socitete;
  CRDBGrid1.DataSource := DM.UniDataSource1
end;

procedure TF_societe.SearchBox1Change(Sender: TObject);
 var searchValue: string;
begin
  searchValue := SearchBox1.Text;
  if searchValue = '' then
    DM.T_socitete.Filtered := False
  else
  begin
    DM.T_socitete.Filter := 'nom LIKE ''%' + searchValue + '%''';
    DM.T_socitete.Filtered := true;
  end;
end;

procedure TF_societe.societeExistant(NumFiscal, RCCM, Designation, tel, adresse,
  email: TEdit);
begin
  if (NumFiscal.Text <> '') or (RCCM.Text <> '') or (Designation.Text <> '')
  then
  begin
    DM.UniQuery1.Close;
    DM.UniQuery1.Fields.Clear;
    DM.UniQuery1.SQL.Text :=
      'Select * from societe where numfiscal = :NumFiscal and RCCM =:RCCM and nom=:designation';
    DM.UniQuery1.parambyname('NumFiscal').asstring := NumFiscal.Text;
    DM.UniQuery1.parambyname('RCCM').asstring := RCCM.Text;
    DM.UniQuery1.parambyname('designation').asstring := Designation.Text;
    DM.UniQuery1.ExecSQL;
    if DM.UniQuery1.RecordCount = 0 then
    begin
      DM.T_socitete.Active := true;
      DM.T_socitete.Append;
      // Ajouter les valeurs des champs de la table utilisateur ici
      DM.T_socitete.FieldByName('numfiscal').asstring := NumFiscal.Text;
      DM.T_socitete.FieldByName('nom').asstring := Designation.Text;
      DM.T_socitete.FieldByName('RCCM').asstring := RCCM.Text;
      DM.T_socitete.FieldByName('adresse').asstring := adresse.Text;
      DM.T_socitete.FieldByName('Tel').asstring := tel.Text;
      DM.T_socitete.FieldByName('Email').asstring := email.Text;
      DM.T_socitete.Post; // Enregistrer l'utilisateur dans la table
      ShowMessage('Nouvelle soci�t� enregistr�e avec succ�s !');
    end
    else
    begin
      ShowMessage('La soci�t� que vous voulez enregistrer exite deja')
    end;
  end
  else
  begin
    ShowMessage('Vous avez un ou plusieurs champs vides');
  end;

end;


procedure TF_societe.SpeedButton3Click(Sender: TObject);
begin
  societeExistant(NumFiscal, RCCM, Designation, tel, adresse, email)
end;

procedure TF_societe.SpeedButton4Click(Sender: TObject);
begin
  clearChamps(NumFiscal, RCCM, Designation, tel, adresse, email)
end;

end.
