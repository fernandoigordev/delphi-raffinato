unit View.Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Dto.Configuracao;

type
  TViewConfiguracao = class(TForm)
    Label1: TLabel;
    PanelContainer: TPanel;
    PanelBotoes: TPanel;
    PanelBotaoSalvar: TPanel;
    SpeedButtonSalvar: TSpeedButton;
    PanelCancelar: TPanel;
    SpeedButtonCancelar: TSpeedButton;
    EditProfundidadeBuraco: TEdit;
    Label2: TLabel;
    EditQtdAvancoMinhoca: TEdit;
    Label3: TLabel;
    EditQtdQuedaMinhoca: TEdit;
    procedure SpeedButtonSalvarClick(Sender: TObject);
    procedure SpeedButtonCancelarClick(Sender: TObject);
  private
    function Validar: Boolean;
  public
    class function GetConfiguracao: TDtoConfiguracao;
  end;


implementation

{$R *.dfm}

{ TViewConfiguracao }

class function TViewConfiguracao.GetConfiguracao: TDtoConfiguracao;
var
  ViewConfiguracao: TViewConfiguracao;
begin
  Result := nil;
  try
    ViewConfiguracao := TViewConfiguracao.Create(nil);
    try
      if (ViewConfiguracao.ShowModal = mrOk) then
      begin
        Result := TDtoConfiguracao.Create;
        Result.ProfundidadeBuraco := StrToIntDef(ViewConfiguracao.EditProfundidadeBuraco.Text, 0);
        Result.QtdAvancoMinhoca := StrToIntDef(ViewConfiguracao.EditQtdAvancoMinhoca.Text, 0);
        Result.QtdQuedaMinhoca := StrToIntDef(ViewConfiguracao.EditQtdQuedaMinhoca.Text, 0);
      end;
    finally
      ViewConfiguracao.Free;
    end;
  except
    Result.Free;
    raise;
  end;
end;

procedure TViewConfiguracao.SpeedButtonCancelarClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TViewConfiguracao.SpeedButtonSalvarClick(Sender: TObject);
begin
  if Validar then
    Self.ModalResult := mrOk;
end;

function TViewConfiguracao.Validar: Boolean;
begin
  Result := True;

  if (StrToIntDef(EditProfundidadeBuraco.Text, 0) = 0) then
  begin
    Result := False;
    ShowMessage('Profundidade do buraco inválida!');
    EditProfundidadeBuraco.SetFocus;
  end;

  if Result and (StrToIntDef(EditQtdAvancoMinhoca.Text, 0) = 0) then
  begin
    Result := False;
    ShowMessage('Qtd avanço da minhoca inválida!');
    EditQtdAvancoMinhoca.SetFocus;
  end;

  if Result and (StrToIntDef(EditQtdQuedaMinhoca.Text, 0) = 0) then
  begin
    Result := False;
    ShowMessage('Qtd queda minhoca inválida!');
    EditQtdQuedaMinhoca.SetFocus;
  end;

end;

end.
