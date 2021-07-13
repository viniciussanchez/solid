unit ISP.Certo.Ave.Pinguin;

interface

uses ISP.Certo.Ave.Intf;

type
  TPinguin = class(TInterfacedObject, IAve)
  private
    procedure Bicar;
  public
    class function New: IAve;
  end;

implementation

uses Vcl.Dialogs;

{ TPinguin }

procedure TPinguin.Bicar;
begin
  ShowMessage('Bicar');
end;

class function TPinguin.New: IAve;
begin
  Result := TPinguin.Create;
end;

end.
