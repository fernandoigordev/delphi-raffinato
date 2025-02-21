unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Classes.Observer;

type
  TViewPrincipal = class(TForm, IObserver)
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
    PanelEstatistica: TPanel;
    LabelQuantidadeSubidas: TLabel;
    Label4: TLabel;
    procedure SpeedButtonIniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateObserver(AStatus: TStatusEscalada);
    procedure IniciarEscalada;
  public

  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

uses
  Classes.Buraco, Classes.Minhoca, View.Configuracao, Dto.Configuracao;

{$R *.dfm}

{ TViewPrincipal }

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  PanelEstatistica.Visible := False;
end;

procedure TViewPrincipal.IniciarEscalada;
var
  Buraco: TBuraco;
  Configuracao: TDtoConfiguracao;
begin
  PanelStatus.Color := clSilver;
  Configuracao := TViewConfiguracao.GetConfiguracao;
  try
    if not Assigned(Configuracao) then
      Exit;

    Buraco := TBuraco.Create(Configuracao.ProfundidadeBuraco,
      TMinhoca.Create(Configuracao.QtdAvancoMinhoca, Configuracao.QtdQuedaMinhoca));
    try
      Buraco.AdicionarObserver(Self);
      Buraco.IniciarEscalada;
      LabelQuantidadeSubidas.Caption := IntToStr(Buraco.Minhoca.QuantidadeSubidasAoEscalar);
    finally
      Buraco.Free;
    end;
  finally
    if Assigned(Configuracao) then
      Configuracao.Free;
  end;
end;

procedure TViewPrincipal.SpeedButtonIniciarClick(Sender: TObject);
begin
  try
    PanelEstatistica.Visible := False;
    SpeedButtonIniciar.Enabled := False;
    IniciarEscalada;
  finally
    SpeedButtonIniciar.Enabled := True;
    PanelEstatistica.Visible := True;
  end;
end;

procedure TViewPrincipal.UpdateObserver(AStatus: TStatusEscalada);
begin
  case AStatus of
    seEscalando: PanelStatus.Color := clRed;
    seMetadeBuraco: PanelStatus.Color := clYellow;
    seForaBuraco: PanelStatus.Color := clGreen;
  end;
  Application.ProcessMessages;
end;

end.
