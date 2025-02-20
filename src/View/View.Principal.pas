unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TViewPrincipal = class(TForm)
    PanelLegenda: TPanel;
    PanelLegendaSaiuDoBuraco: TPanel;
    LabelLegendaMetadeDoBurado: TLabel;
    LabelLegendaSaiuDoBuraco: TLabel;
    PanelLegendaMetadeBuraco: TPanel;
    LabelLegendaEscalandoBuraco: TLabel;
    PanelLegendaEscalandoBuraco: TPanel;
    PanelContainer: TPanel;
    PanelStatus: TPanel;
    PanelEscalar: TPanel;
    PanelTitulo: TPanel;
    SpeedButtonIniciar: TSpeedButton;
    LabelLegendaInoperante: TLabel;
    PanelLegendaInoperante: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

end.
