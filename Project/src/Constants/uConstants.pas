unit uConstants;

interface

uses Data.DB;

type
  TFilterQuery = record
    Key: string;
    Value: string;
    Ttype: TFieldType;
  end;

const
  sSIM = 'S';
  sNAO = 'N';

implementation

end.
