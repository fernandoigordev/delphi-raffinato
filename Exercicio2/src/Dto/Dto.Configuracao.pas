unit Dto.Configuracao;

interface

type
  TDtoConfiguracao = class
  private
    FProfundidadeBuraco: Integer;
    FQtdAvancoMinhoca: Integer;
    FQtdQuedaMinhoca: Integer;
  public
    property ProfundidadeBuraco: Integer read FProfundidadeBuraco write FProfundidadeBuraco;
    property QtdAvancoMinhoca: Integer read FQtdAvancoMinhoca write FQtdAvancoMinhoca;
    property QtdQuedaMinhoca: Integer read FQtdQuedaMinhoca write FQtdQuedaMinhoca;
  end;

implementation

end.
