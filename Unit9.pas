unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Menus, Buttons;

type
  TForm9 = class(TForm)
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    _N3: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    _N5: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure CheckListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure CheckListBox1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    mx,my:integer;
  public
        { Public declarations }
    Index:TStringList;
  end;

var
  Form9: TForm9;

implementation

uses Unit1, unit4, Unit10;

{$R *.dfm}

procedure TForm9.Button2Click(Sender: TObject);
var
 i:integer;
begin
 i:=0;
  while i<=CheckListBox1.Count-1 do begin
  if CheckListBox1.Checked[i] then
   begin
    CheckListBox1.Items.Delete(i);
    Form9.index.Delete(i);
   end else
  inc(i);
 end;//while
end;

procedure TForm9.CheckListBox1Click(Sender: TObject);
begin
 CheckListBox1.Selected[CheckListBox1.ItemIndex]:=true;
 Label1.Caption:=IntToStr(CheckListBox1.ItemIndex);
end;

procedure TForm9.CheckListBox1DblClick(Sender: TObject);
begin
 if not (CheckListBox1.ItemIndex=-1) then Form1.OpenKandidat(StrToInt(Form9.index.Strings[CheckListBox1.ItemIndex]),act_update);
end;

procedure TForm9.CheckListBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=chr(13) then
 if not (CheckListBox1.ItemIndex=-1) then Form1.OpenKandidat(StrToInt(Form9.index.Strings[CheckListBox1.ItemIndex]),act_update);
end;

procedure TForm9.Button5Click(Sender: TObject);
var
 i:integer;
begin
 if not(Form9.Index.Count=0) then begin
 Form10:=TForm10.Create(Form9);
  try
   Form10.kandidat:=TStringList.Create;
   Form10.kandidat.Clear;
   Form10.ListBox1.Clear;
     for i:=0 to Form9.Index.Count-1 do begin
       if CheckListBox1.Checked[i] then begin
        Form10.kandidat.Add(Form9.index.Strings[i]);
        Form10.ListBox1.Items.Add(Form9.CheckListBox1.Items.Strings[i]);
       end;//if
     end;//for}
 //   Form10.ListBox1.Items.AddStrings(Form10.kandidat);
  if Form10.kandidat.Count=0 then
   ShowMessage('Извините, но отбирать некого. Нет выделенных кандидатов для отбора.')
  else
    Form10.ShowModal;

  finally
    form10.Close;
  end;
 form10.Free;
 end//if

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
 index:=TStringList.create;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
 Label2.Caption:='Всего '+IntToStr(CheckListBox1.Items.Count)+' записей';
end;

procedure TForm9.N3Click(Sender: TObject);
var
 i:integer;
 pos:TPoint;
begin
 pos.x:=mx;
 pos.Y:=my;

// i:=CheckListBox1.ItemIndex;
 i:=CheckListBox1.ItemAtPos(pos,true);
 if not(i=-1) then
  with CheckListBox1 do begin
   ItemIndex:=i;
   Repaint;
   Items.Delete(I);
   Index.Delete(I);
  end;//with

end;

procedure TForm9.N1Click(Sender: TObject);
begin
 CheckListBox1.Checked[CheckListBox1.ItemIndex]:=true;
end;

procedure TForm9.N2Click(Sender: TObject);
begin
  CheckListBox1.Checked[CheckListBox1.ItemIndex]:=false;
end;

procedure TForm9.CheckListBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 mx:=x;my:=y;
end;

procedure TForm9.Button7Click(Sender: TObject);

begin
  if not(Form9.Index.Count=0) then begin
 Form10:=TForm10.Create(Form9);
  try
   Form10.kandidat:=TStringList.Create;
   Form10.kandidat.Clear;
   Form10.kandidat.AddStrings(Form9.index);
   Form10.ListBox1.Items.AddStrings(Form9.CheckListBox1.Items);
    { for i:=0 to Form9.Index.Count-1 do begin
       if CheckListBox1.Checked[i] then Form10.kandidat.Add(Form9.index.Strings[i]);
     end;//for}
 //   Form10.ListBox1.Items.AddStrings(Form10.kandidat);
    Form10.ShowModal;
  finally
    form10.Close;
  end;
 form10.Free;
 end//if
 else ShowMessage('Извините, но отбирать некого. Нет кандидатов для отбора.');
end;

procedure TForm9.Button3Click(Sender: TObject);
var
 i:integer;
begin
  i:=0;
  while i<=CheckListBox1.Count-1 do begin
  if not CheckListBox1.Checked[i] then
   begin
    CheckListBox1.Items.Delete(i);
    Form9.index.Delete(i);
   end else
  inc(i);
 end;//while
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  CheckListBox1.Items.Clear;
  Form9.index.Clear;
end;

procedure TForm9.Button6Click(Sender: TObject);
var
 i:integer;
begin
  if not(Form9.Index.Count=0) then begin
 Form10:=TForm10.Create(Form9);
  try
   Form10.kandidat:=TStringList.Create;
   Form10.kandidat.Clear;
   Form10.ListBox1.Clear;
     for i:=0 to Form9.Index.Count-1 do begin
       if not CheckListBox1.Checked[i] then begin
        Form10.kandidat.Add(Form9.index.Strings[i]);
        Form10.ListBox1.Items.Add(Form9.CheckListBox1.Items.Strings[i]);
       end;//if
     end;//for}
 //   Form10.ListBox1.Items.AddStrings(Form10.kandidat);
  if Form10.kandidat.Count=0 then
   ShowMessage('Извините, но отбирать некого. Нет не выделенных кандидатов для отбора.')
  else
    Form10.ShowModal;

  finally
    form10.Close;
  end;
 form10.Free;
 end//if

end;

end.
