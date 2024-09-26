unit uCidadeController;

interface

uses
  uCidadeModel, uController;

type
  TCidadeController = class(TController)
  public
    constructor Create;
  end;

implementation

{ TCidadeController }

constructor TCidadeController.Create;
begin
  FModel := TCidadeModel.Create;
end;

end.
