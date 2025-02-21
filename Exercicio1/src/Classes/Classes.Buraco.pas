unit Classes.Buraco;

interface

uses
  Classes.Observer, Classes.Minhoca;

type
  TBuraco = class(TObserverManager)
  private
    FProfundidade: Integer;
    FMinhoca: TMinhoca;
  public
    constructor Create(AProfundidade: Integer; AMinhoca: TMinhoca);
    destructor Destroy;override;
    procedure IniciarEscalada;

    property Minhoca: TMinhoca read FMinhoca;
  end;

implementation

{ TBuraco }

constructor TBuraco.Create(AProfundidade: Integer; AMinhoca: TMinhoca);
begin
  inherited Create;
  FProfundidade := AProfundidade;
  FMinhoca := AMinhoca;
end;

destructor TBuraco.Destroy;
begin
  FMinhoca.Free;
  inherited;
end;

procedure TBuraco.IniciarEscalada;
var
  MetadeAlturaBuraco: Double;
  ChegouMetadeBuraco: Boolean;
begin
  Notificar(seEscalando);
  ChegouMetadeBuraco := False;
  MetadeAlturaBuraco := (FProfundidade/2);
  while FProfundidade >= FMinhoca.AlturaPecorrida do
  begin
    FMinhoca.Escalar;
    if (not ChegouMetadeBuraco) and (FMinhoca.AlturaPecorrida >= MetadeAlturaBuraco) then
    begin
      ChegouMetadeBuraco := True;
      Notificar(seMetadeBuraco);
    end;
  end;

  Notificar(seForaBuraco);
end;

end.
