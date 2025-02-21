unit Classes.Observer;

interface

uses
  System.Generics.Collections;

type
  TStatusEscalada = (seNenhum, seEscalando, seMetadeBuraco, seForaBuraco);

  IObserver = interface
    ['{3706B8D6-9AE7-4C35-8BD9-C909F2F47463}']
    procedure UpdateObserver(AStatusEscalada: TStatusEscalada);
  end;

  TObserverManager = class
    private
      FObserverList: TList<IObserver>;
    public
      procedure AdicionarObserver(AObserver: IObserver);
      procedure RemoverObserver(AObserver: IObserver);
      procedure Notificar(AStatusEscalada: TStatusEscalada);

      constructor Create;
      destructor Destroy;override;
  end;

implementation

{ TObserverManager }

procedure TObserverManager.AdicionarObserver(AObserver: IObserver);
begin
  FObserverList.Add(AObserver);
end;

constructor TObserverManager.Create;
begin
  FObserverList := TList<IObserver>.Create;
end;

destructor TObserverManager.Destroy;
begin
  FObserverList.Free;
  inherited;
end;

procedure TObserverManager.Notificar(AStatusEscalada: TStatusEscalada);
var
  Observer: IObserver;
begin
  for Observer in FObserverList do
    Observer.UpdateObserver(AStatusEscalada);
end;

procedure TObserverManager.RemoverObserver(AObserver: IObserver);
begin
  FObserverList.Remove(AObserver);
end;

end.
