unit uFuncionarioController;

interface

uses
  uFuncionarioModel, uController, Firedac.Comp.Client;

type
  TFuncionarioController = class(TController)
  public
    constructor Create;
    procedure GetFuncionarioEmpresa(pQuery: TFDQuery;
      const psIdEmpresa: string);
  end;

implementation

{ TFuncionarioController }

constructor TFuncionarioController.Create;
begin
  FModel := TFuncionarioModel.Create;
end;

procedure TFuncionarioController.GetFuncionarioEmpresa(pQuery: TFDQuery;
  const psIdEmpresa: string);
begin
  (FModel as TFuncionarioModel).GetFuncionarioEmpresa(pQuery, psIdEmpresa);
end;

end.
