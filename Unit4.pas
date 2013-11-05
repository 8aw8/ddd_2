unit Unit4;

interface

uses SysUtils;

const
a:set of char=['1','2','3','4','5','6','7','8','9','0'];

 type
  Tact=(act_insert,act_update,act_delete);
  TIDList=class(TObject)
  af:integer;
  private
  public
    property Id:integer read af write af default 0;
    constructor Create(id:integer);
    destructor Destroy; override;
  end;
 function DateToMSAccess(Date:TDateTime):string;
 function FilterStr(s:string):string;
 function DDD(s1:string):string;
implementation

Constructor TIDList.Create;
begin
 af:=id;
end;
destructor TIDList.Destroy;
begin
end;

function DateToMSAccess;
var
 Year, Month, Day:word;
begin
  DecodeDate(Date, Year, Month, Day);
 Result:='#'+IntToStr(Month)+'/'+IntToStr(Day)+'/'+IntToStr(Year)+'#';
end;
function FilterStr(s:string):string;
var
 i:integer;
begin
 result:='';
 for i:=1 to Length(s) do
  if s[i] in a then result:=result+s[i];
end;

function DDD(s1:string):string;
 var t: integer;
     s2:string;
begin
 s2:='';
 for t:=1 to length(s1) do begin
  if ord(s1[t])>31 then s2:=s2+s1[t];
 end;
 DDD:=s2;
end;

end.
