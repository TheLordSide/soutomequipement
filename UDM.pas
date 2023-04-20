unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, UniProvider, MySQLUniProvider, DBAccess, Uni,
  MemDS;

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
    T_role: TUniTable;
    UniDataSource1: TUniDataSource;
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
