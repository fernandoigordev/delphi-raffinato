unit Classes.Minhoca;

interface

type
  TMinhoca = class
  private
    FAlturaIncrementarSubir: Double;
    FAlturaDeduzirCair: Double;
    FQuantidadeSubidasAoEscalar: Integer;
    FAlturaPecorrida: Double;

    procedure Cair;
  public
    property QuantidadeSubidasAoEscalar: Integer read FQuantidadeSubidasAoEscalar;
    property AlturaPecorrida: Double read FAlturaPecorrida;

    procedure Escalar;
    constructor Create;
  end;

implementation

uses
  Winapi.Windows;

{ TMinhoca }

procedure TMinhoca.Cair;
begin
  FAlturaPecorrida := FAlturaPecorrida - FAlturaDeduzirCair;
  Sleep(1000);
end;

constructor TMinhoca.Create;
begin
  FAlturaIncrementarSubir := 5;
  FAlturaDeduzirCair := 3;
  FQuantidadeSubidasAoEscalar := 0;
  FAlturaPecorrida := 0;
end;

procedure TMinhoca.Escalar;
begin
  FAlturaPecorrida := FAlturaPecorrida + FAlturaIncrementarSubir;
  FQuantidadeSubidasAoEscalar := FQuantidadeSubidasAoEscalar + 1;
  Cair;
end;


end.
