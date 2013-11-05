unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, unit4, ExtCtrls, DBCtrls;

type
  TForm8 = class(TForm)
    ComboBox1: TComboBox;
    StaticText1: TStaticText;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    RadioGroup1: TRadioGroup;
    StaticText2: TStaticText;
    Button1: TButton;
    ADOTable1: TADOTable;
    Label1: TLabel;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    act:TAct;id:integer;
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
uses unit1;

procedure TForm8.FormActivate(Sender: TObject);
begin
 with Form8.ADOQuery2 do begin
   Close;
    SQL.Clear;
    SQL.Add('select id, name from event');
   Open;
   First;

   while not(eof) do begin
    ComboBox1.Items.Add(FieldByName('name').asString);
    Next;
   end;//while
 end;//with
{ with Form8.ADOQuery1 do begin
  Close;
   SQL.Clear;
   SQL.Add('select * from resume_delo');
   SQL.Add('where id_resume='+IntToStr(Form8.id));
  Open;
 end;//with}

end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
 with Form8.ADOQuery2 do begin
  Close;
   SQL.Clear;
   SQL.Add('select action from act');
   SQL.Add('where id_event='+IntToStr(ADOQuery1.FieldByName('id_event').asInteger) );
  Open;
  first;
  RadioGroup1.Items.Clear;
{   while not (eof) do begin
    RadioGroup1.Items.Add(Form8.ADOQuery2.FieldByName('action').asString);
    Next;
   end;//while
 end;//with
 with Form8.ADOQuery2 do begin
  Close;
   SQL.Clear;
   SQL.Add('select action from act');
   SQL.Add('where id='+IntToStr(Form8.ADOQuery1.FieldByName('id_act').asInteger));
  Open;
 RadioGroup1.ItemIndex:=RadioGroup1.Items.IndexOf(FieldByName('action').AsString);
 }

 end;//with


end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
  with Form8.ADOQuery2 do begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT name');
   SQL.Add('FROM [Action] RIGHT JOIN act ON [Action].id = act.id_action');
   SQL.Add('where (not(act.id_action=6))and(act.id_event=(select id from event where name="'+ComboBox1.Text+'"))');
  Open;
  first;
  RadioGroup1.Items.Clear;
   while not (eof) do begin
    RadioGroup1.Items.Add(Form8.ADOQuery2.FieldByName('name').asString);
    Next;
   end;//while
 end;//with
end;

procedure TForm8.Button1Click(Sender: TObject);
var
 action:string;
 acti:integer;
 p:boolean;
begin
 p:=true;
if RadioGroup1.ItemIndex=-1 then begin p:=false; ShowMessage('Выберите необходимое действие.'); end;
if ComboBox1.Text='' then begin p:=false; ShowMessage('Выберите событие из списка событий.'); end;
if p then begin
 action:=RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];
 with ADOQuery2 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT act.id');
  SQL.Add('FROM event RIGHT JOIN act ON event.id = act.id_event');
  SQL.Add('where (event.name="'+ComboBox1.Text+'")and(act.action="'+action+'")');
  open;
  Label1.Caption:=FieldByName('id').AsString;
  acti:=FieldByName('id').AsInteger;
 end;//with

 with ADOTable1 do begin
  Close;
   TableName:='delo';
  Open;
   Insert;
    FieldByName('id_resume').AsInteger:=Form8.id;
    FieldByName('id_act').AsInteger:=acti;
    FieldByName('date').AsDateTime:=now;
   post;
 end;//with
  AdoQuery1.Close;
  AdoQuery1.Open;

 end;//if p
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=-1 then ShowMessage('Выберите необходимый результат.')
 else
 with Form8.ADOQuery2 do begin
  Close;
   SQL.Clear;
   SQL.Add('select id from act');
   SQL.Add('where (action="'+RadioGroup1.items.strings[RadioGroup1.ItemIndex]+'")and(id_event='+ADOQuery1.FieldbyName('id_event').asString+')');
  Open;
 Label1.Caption:=FieldbyName('id').AsString;
 end;//with
 with ADOTable1 do begin
  Close;
  TableName:='delo';
  Open; Edit;
   FieldByName('id_act').AsInteger:=ADOQuery2.FieldbyName('id').asInteger;
  post;
 end;//with
 ADOQuery1.Close;
 ADOQuery1.Open;

end;

end.


