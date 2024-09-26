unit uView.Persist.Controll.Functions;

interface

uses uController, Vcl.Dialogs, System.UITypes, Data.DB;

procedure NewRecord(pController: TController);
procedure Save(pController: TController);
procedure Cancel(pController: TController);
procedure Edit(pController: TController);
procedure DeleteLogical(pController: TController);
procedure DeletePhysical(pController: TController);
function IsDataSetActive(pDataSet: TDataSet): Boolean;

implementation

uses
  System.SysUtils;

procedure NewRecord(pController: TController);
var
  sResponse: string;
begin
  sResponse := pController.New;

  if not sResponse.IsEmpty then
    MessageDlg(sResponse, mtInformation, [mbOK], 0);
end;

procedure Save(pController: TController);
begin
  MessageDlg(pController.Add, mtInformation, [mbOK], 0);
end;

procedure Edit(pController: TController);
var
  sResponse: string;
begin
  sResponse := pController.Edit;

  if not sResponse.IsEmpty then
    MessageDlg(sResponse, mtInformation, [mbOK], 0);
end;

procedure Cancel(pController: TController);
var
  sResponse: string;
begin
  sResponse := pController.Cancel;

  if not sResponse.IsEmpty then
    MessageDlg(sResponse, mtInformation, [mbOK], 0);
end;

procedure DeleteLogical(pController: TController);
begin
  MessageDlg(pController.DeleteLogical, mtInformation, [mbOK], 0);
end;

procedure DeletePhysical(pController: TController);
begin
  MessageDlg(pController.DeletePhysical, mtInformation, [mbOK], 0);
end;

function IsDataSetActive(pDataSet: TDataSet): Boolean;
begin
  Result := pDataSet.Active and (not pDataSet.IsEmpty);
end;

end.
