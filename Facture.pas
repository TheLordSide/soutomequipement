unit Facture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPanels, Vcl.DBCtrls, Vcl.WinXPickers,
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid;

type
  TF_facture = class(TForm)
    Panel1: TPanel;
    SplitView1: TSplitView;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    FactureProforma: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    Label1: TLabel;
    SocieteSelection: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Numfacture: TEdit;
    Reffacture: TEdit;
    BCN: TEdit;
    DatePicker1: TDatePicker;
    CategoryPanel5: TCategoryPanel;
    Numchassi: TEdit;
    Km: TEdit;
    Marque: TEdit;
    Immatriculation: TEdit;
    CategoryPanel4: TCategoryPanel;
    travaux: TEdit;
    SpeedButton3: TSpeedButton;
    CategoryPanel6: TCategoryPanel;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Desinom: TEdit;
    Qte: TEdit;
    Pu: TEdit;
    total: TEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    Panel_nouveau_client: TPanel;
    NomClient: TEdit;
    NumeroFiscalClient: TEdit;
    AdresseClient: TEdit;
    TelClient: TEdit;
    EMailClient: TEdit;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel_client_existant: TPanel;
    ClientSelection: TDBLookupComboBox;
    Panel3: TPanel;
    Nouveau_Client: TRadioButton;
    Client_Existant: TRadioButton;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Nom_holder: TLabel;
    Adresse_holder: TLabel;
    TelHolder: TLabel;
    EmailHolder: TLabel;
    Label19: TLabel;
    NumFholder: TLabel;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    NumFiscalHolder: TLabel;
    DesiHolder: TLabel;
    RCCMHolder: TLabel;
    AdresseHolder: TLabel;
    TelSHolder: TLabel;
    EmailSHolder: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    CRDBGrid3: TCRDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DeleteData();
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Nouveau_ClientClick(Sender: TObject);
    procedure EnregistrerClient();
    procedure Client_ExistantClick(Sender: TObject);
    procedure ClientSelectionCloseUp(Sender: TObject);
    procedure SocieteSelectionCloseUp(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_facture: TF_facture;

implementation

{$R *.dfm}

uses UDM;

procedure TF_facture.EnregistrerClient();
var
  name, number, adress, tel, mail: string;
begin

  DM.T_client.active := True;

  // ici je passe le client en var gloabal
  if Nouveau_Client.Checked = True then
  begin
    name := NomClient.Text;
    number := NumeroFiscalClient.Text;
    adress := AdresseClient.Text;
    tel := TelClient.Text;
    mail := EMailClient.Text;

    DM.T_client.Append;
    // Ajouter les valeurs des champs de la table utilisateur ici
    DM.T_client.FieldByName('Nomclient').AsString := name;
    DM.T_client.FieldByName('Numero Fiscal').AsString := number;
    DM.T_client.FieldByName('Adresse').AsString := adress;
    DM.T_client.FieldByName('Telephone').AsString := tel;
    DM.T_client.FieldByName('Email').AsString := mail;
    DM.T_client.Post;
    DM.Q_client.close;
    DM.Q_client.open;

  end
  else if Client_Existant.Checked = True then
  begin
    name := Nom_holder.Caption;
    number := NumFholder.Caption;
    adress := Adresse_holder.Caption;
    tel := TelHolder.Caption;
    mail := EmailHolder.Caption;

  end;

end;

procedure TF_facture.ClientSelectionCloseUp(Sender: TObject);
begin
  Nom_holder.Caption := DM.Q_client.FieldByName('Nomclient').AsString;
  NumFholder.Caption := DM.Q_client.FieldByName('Numero Fiscal').AsString;
  TelHolder.Caption := DM.Q_client.FieldByName('Telephone').AsString;
  EmailHolder.Caption := DM.Q_client.FieldByName('Email').AsString;
  Adresse_holder.Caption := DM.Q_client.FieldByName('Adresse').AsString;
end;

procedure TF_facture.Client_ExistantClick(Sender: TObject);
begin
  Panel_nouveau_client.Visible := false;
  Panel_client_existant.Visible := True;

end;

procedure TF_facture.DeleteData();
begin
  DM.UniQuery1.close;
  DM.UniQuery1.SQL.Clear;
  DM.UniQuery1.SQL.Text := 'truncate temp_travaux';
  DM.UniQuery1.ExecSQL;
end;

procedure TF_facture.FormCreate(Sender: TObject);
begin
  DatePicker1.Date := Now();
  DM.UniDataSource2.dataset := DM.T_temptravaux;
  CRDBGrid1.DataSource := DM.UniDataSource2;
  DM.T_temptravaux.active := True;

  DM.UniDataSource3.dataset := DM.T_tempfacturation;
  CRDBGrid2.DataSource := DM.UniDataSource3;
  DM.T_tempfacturation.active := True;

  DM.T_tempvoiture.active := True;
end;

procedure TF_facture.Nouveau_ClientClick(Sender: TObject);
begin
  Panel_nouveau_client.Visible := True;
  Panel_client_existant.Visible := false;

end;

procedure TF_facture.SocieteSelectionCloseUp(Sender: TObject);
begin
  NumFiscalHolder.Caption := DM.Q_societe.FieldByName('numfiscal').AsString;
  DesiHolder.Caption := DM.Q_societe.FieldByName('nom').AsString;
  RCCMHolder.Caption := DM.Q_societe.FieldByName('RCCM').AsString;
  AdresseHolder.Caption := DM.Q_societe.FieldByName('adresse').AsString;
  TelSHolder.Caption := DM.Q_societe.FieldByName('Tel').AsString;
  EmailSHolder.Caption := DM.Q_societe.FieldByName('Email').AsString;
end;

procedure TF_facture.SpeedButton2Click(Sender: TObject);
begin
  DM.T_tempvoiture.active := True;
  DM.T_tempvoiture.Append;
  // Ajouter les valeurs des champs de la table utilisateur ici
  DM.T_tempvoiture.FieldByName('numchassi').AsString := Numchassi.Text;
  DM.T_tempvoiture.FieldByName('km').AsString := Km.Text;
  DM.T_tempvoiture.FieldByName('marque').AsString := Marque.Text;
  DM.T_tempvoiture.FieldByName('imatriculation').AsString :=
    Immatriculation.Text;
  DM.T_tempvoiture.FieldByName('nomclient').AsString := name;
  DM.T_tempvoiture.FieldByName('Numref').AsString := total.Text;
  DM.T_tempvoiture.Post;
end;

procedure TF_facture.SpeedButton3Click(Sender: TObject);
begin

  DM.T_temptravaux.active := True;
  DM.T_temptravaux.Append;
  // Ajouter les valeurs des champs de la table utilisateur ici
  DM.T_temptravaux.FieldByName('designation').AsString := travaux.Text;
  DM.T_temptravaux.FieldByName('numfacture').AsString := Numfacture.Text;
  DM.T_temptravaux.Post;

end;

procedure TF_facture.SpeedButton4Click(Sender: TObject);
begin
  EnregistrerClient()
end;

procedure TF_facture.SpeedButton7Click(Sender: TObject);
begin
  DM.T_tempfacturation.active := True;
  DM.T_tempfacturation.Append;
  // Ajouter les valeurs des champs de la table utilisateur ici
  DM.T_tempfacturation.FieldByName('ref').AsString := travaux.Text;
  DM.T_tempfacturation.FieldByName('numfacture').AsString := Numfacture.Text;
  DM.T_tempfacturation.FieldByName('designation').AsString := Desinom.Text;
  DM.T_tempfacturation.FieldByName('qte').AsString := Qte.Text;
  DM.T_tempfacturation.FieldByName('prixunitaire').AsString := Pu.Text;
  DM.T_tempfacturation.FieldByName('montant').AsString := total.Text;
  DM.T_tempfacturation.Post;
end;

end.
