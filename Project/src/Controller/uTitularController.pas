unit uTitularController;

interface

uses
  uTitularModel, uController;

type
  TTitularController = class(TController)
  public
    constructor Create;
  end;

implementation

{ TTitularController }

constructor TTitularController.Create;
begin
  FModel := TTitularModel.Create;
end;

end.
