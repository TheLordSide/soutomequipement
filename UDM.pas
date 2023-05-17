unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, UniProvider, MySQLUniProvider, DBAccess, Uni,
  MemDS, frxClass;

type
  TDM = class(TDataModule)
    UniConnection: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    UniTable1: TUniTable;
    UniQuery1: TUniQuery;
    UniQuery1idutilisateur: TIntegerField;
    UniQuery1Nomuti: TStringField;
    UniQuery1Mdp: TStringField;
    UniQuery1statut: TStringField;
    UniQuery1role: TStringField;
    UniQuery1datecreation: TDateField;
    UniQuery1datelast: TDateField;
    UniDataSource1: TUniDataSource;
    T_utilisateur: TUniTable;
    T_utilisateuridutilisateur: TIntegerField;
    T_utilisateurNomuti: TStringField;
    T_utilisateurMdp: TStringField;
    T_utilisateurstatut: TStringField;
    T_utilisateurrole: TStringField;
    T_utilisateurdatecreation: TDateField;
    T_utilisateurdatelast: TDateField;
    T_socitete: TUniTable;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
