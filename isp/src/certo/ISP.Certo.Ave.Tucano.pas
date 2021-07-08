unit ISP.Certo.Ave.Tucano;

interface

uses ISP.Certo.Ave.Intf, ISP.Certo.Ave.Voadora.Intf;

type
  TTucano = class(TInterfacedObject, IAve, IAveVoadora)
  private
    procedure Bicar;
    procedure Voar;
  public
    class function New: IAve;
  end;

implementation

uses Vcl.Dialogs;

{ TTucano }

procedure TTucano.Bicar;
begin
  ShowMessage('Bicar');
end;

class function TTucano.New: IAve;
begin
  Result := TTucano.Create;
end;

procedure TTucano.Voar;
begin
  ShowMessage('Voar');
end;

end.
