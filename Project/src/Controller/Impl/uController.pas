unit uController;

interface

uses
  FireDAC.Comp.Client, uConstants, Data.Db, uIController,
  uModel;

type
  TController = class(TInterfacedObject, IController)
  protected
    FModel: TModel;

  public
    destructor Destroy; Override;

    function New: string;
    function Edit: string;
    function Cancel: string;
    function Add: string;
    function Get(const psKey: string): TFDQuery; overload;
    function Get(pArrayFilter: TArray<TFilterQuery>): TFDQuery; overload;
    function DeletePhysical: string;
    function DeleteLogical: string;

  end;

implementation

{ TControllerImpl }

uses
  System.SysUtils, System.Classes;

Const
  sMESSAGESAVE = 'Salvo com sucesso.';
  sMESSAGEDELETEPHYSICAL = 'Excluído com sucesso.';
  sMESSAGEDELETELOGICAL = 'Inativado com sucesso.';
  sMESSAGECANCEL = 'Cancelado com sucesso.';

destructor TController.Destroy;
begin
  if Assigned(FModel) then
    FreeAndNil(FModel);
  inherited;
end;

function TController.Get(pArrayFilter: TArray<TFilterQuery>): TFDQuery;
begin
  Result := FModel.Get(pArrayFilter);
end;

function TController.New: string;
begin
  Try
    FModel.NewRecord;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.Add: string;
begin
  Try
    FModel.Add;
    Result := sMESSAGESAVE;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.Edit: string;
begin
  Try
    FModel.Edit;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.Cancel: string;
begin
  Try
    FModel.Cancel;
    Result := sMESSAGECANCEL;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.DeleteLogical: string;
begin
  Try
    FModel.DeleteLogical;
    Result := sMESSAGEDELETELOGICAL;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.DeletePhysical: string;
begin
  Try
    FModel.DeletePhysical;
    Result := sMESSAGEDELETEPHYSICAL;
  except
    on E: Exception do
      Result := E.Message;
  End;
end;

function TController.Get(const psKey: string): TFDQuery;
begin
  Result := FModel.Get(psKey);
end;

end.
