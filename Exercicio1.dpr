program Exercicio1;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {ViewPrincipal},
  Classes.Minhoca in 'src\Classes\Classes.Minhoca.pas',
  Classes.Buraco in 'src\Classes\Classes.Buraco.pas',
  Classes.Observer in 'src\Classes\Classes.Observer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
