unit Facture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPanels, Vcl.DBCtrls, Vcl.WinXPickers;

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
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DatePicker1: TDatePicker;
    CategoryPanel5: TCategoryPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    Edit10: TEdit;
    Label13: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    CategoryPanel4: TCategoryPanel;
    travaux: TEdit;
    ListBox1: TListBox;
    SpeedButton3: TSpeedButton;
    CategoryPanel6: TCategoryPanel;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  F_facture: TF_facture;

implementation

{$R *.dfm}

procedure TF_facture.FormCreate(Sender: TObject);
begin
DatePicker1.Date := Now();
end;

procedure TF_facture.SpeedButton3Click(Sender: TObject);
begin
     ListBox1.Items.Add(travaux.Text);
end;

end.
