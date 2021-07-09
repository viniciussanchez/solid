unit DIP.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmExemploDIP = class(TForm)
    btnLigarComputadorErrado: TButton;
    btnLigarComputadorCerto: TButton;
    btnLigarCelularCerto: TButton;
    btnLigarCelularErrado: TButton;
    procedure btnLigarComputadorErradoClick(Sender: TObject);
    procedure btnLigarComputadorCertoClick(Sender: TObject);
    procedure btnLigarCelularErradoClick(Sender: TObject);
    procedure btnLigarCelularCertoClick(Sender: TObject);
  end;

var
  FrmExemploDIP: TFrmExemploDIP;

implementation

{$R *.dfm}

uses DIP.Errado.Celular.Botao, DIP.Errado.Computador.Botao,
  DIP.Certo.Botao, DIP.Certo.Dispositivo.Celular, DIP.Certo.Dispositivo.Computador;

procedure TFrmExemploDIP.btnLigarCelularCertoClick(Sender: TObject);
begin
  TBotao.New(TCelular.New).Acionar;
end;

procedure TFrmExemploDIP.btnLigarCelularErradoClick(Sender: TObject);
var
  LBotaoCelular: TBotaoCelular;
begin
  LBotaoCelular := TBotaoCelular.Create;
  try
    LBotaoCelular.Acionar;
  finally
    LBotaoCelular.Free;
  end;
end;

procedure TFrmExemploDIP.btnLigarComputadorCertoClick(Sender: TObject);
begin
  TBotao.New(TComputador.New).Acionar;
end;

procedure TFrmExemploDIP.btnLigarComputadorErradoClick(Sender: TObject);
var
  LBotaoComputador: TBotaoComputador;
begin
  LBotaoComputador := TBotaoComputador.Create;
  try
    LBotaoComputador.Acionar;
  finally
    LBotaoComputador.Free;
  end;
end;

end.
