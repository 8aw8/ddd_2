unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm12 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    StaticText1: TStaticText;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
   { Public declarations }
   config:TStringList;
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}
 uses Unit1;
procedure TForm12.Button1Click(Sender: TObject);
var
 i:integer;
 s:string;
begin
 s:=Form1.ADOConnection1.ConnectionString;

 Config.Clear;
  i:=pos(';',s);
 while not(i=0) do begin
   Config.Add(copy(s,1,i-1));
   s:=copy(s,i+1,Length(s)-i);
   i:=pos(';',s);
 end;//while
  Config.Add(s);
  Config.SaveToFile('c:\config.ini');
   Label1.Caption:=Config.Values['Data Source'];

   Config.Clear;
   config.LoadFromFile('ñ:\config.ini');
   s:=Config.Strings[0];
  for i:=1 to Config.Count-1 do begin
   s:=s+';'+Config.Strings[i];
  end;//for

  Form1.ADOConnection1.Close;
  Form1.ADOConnection1.ConnectionString:=s;
  Form1.ADOConnection1.Open;

  ListBox1.Items.Clear;
  ListBox1.Items.AddStrings(config);
end;

procedure TForm12.FormActivate(Sender: TObject);
begin
 Memo1.Lines.Add(Form1.ADOConnection1.ConnectionString);
 config:=TStringList.Create;
 config.LoadFromFile('c:\config.ini');
end;

procedure TForm12.FormDeactivate(Sender: TObject);
begin
 config.Clear;
 config.Free;
end;

procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then begin
  Edit1.Text:=OpenDialog1.FileName;
  config.Values['Data Source']:=OpenDialog1.FileName;
  ListBox1.Clear;
  ListBox1.Items.AddStrings(config);
 end;//if
end;

procedure TForm12.Button2Click(Sender: TObject);
var
 s:string;i:integer;
begin
 s:=Config.Strings[0];
  for i:=1 to Config.Count-1 do begin
   s:=s+';'+Config.Strings[i];
  end;//for

  Form1.ADOConnection1.Close;
  Form1.ADOConnection1.ConnectionString:=s;
  Form1.ADOConnection1.Open;

end;

procedure TForm12.Button3Click(Sender: TObject);
begin
 Config.SaveToFile('c:\config.ini');
end;

end.












