unit uEmpresaController;

interface

uses
  uEmpresaModel, uController;

type
  TEmpresaController = class(TController)
  public
    constructor Create;
  end;

implementation

{ TEmpresaController }

constructor TEmpresaController.Create;
begin
  FModel := TEmpresaModel.Create;
end;

end.
