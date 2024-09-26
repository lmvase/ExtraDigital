unit uEnderecoEmpresaController;

interface

uses
  uEnderecoEmpresaModel, uController, Firedac.Comp.Client;

type
  TEnderecoEmpresaController = class(TController)
  public
    constructor Create;
  end;

implementation

{ TEnderecoEmpresaController }

constructor TEnderecoEmpresaController.Create;
begin
  FModel := TEnderecoEmpresaModel.Create;
end;

end.
