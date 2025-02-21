program Exercicio2;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {ViewPrincipal},
  Classes.Minhoca in 'src\Classes\Classes.Minhoca.pas',
  Classes.Buraco in 'src\Classes\Classes.Buraco.pas',
  Classes.Observer in 'src\Classes\Classes.Observer.pas',
  View.Configuracao in 'src\View\View.Configuracao.pas' {ViewConfiguracao},
  Dto.Configuracao in 'src\Dto\Dto.Configuracao.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
