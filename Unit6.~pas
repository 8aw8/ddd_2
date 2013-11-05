unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, unit4, DB, ADODB, ComCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    ComboBox5: TComboBox;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    ComboBox2: TComboBox;
    StaticText2: TStaticText;
    ComboBox4: TComboBox;
    StaticText4: TStaticText;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    StaticText5: TStaticText;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    LabeledEdit9: TLabeledEdit;
    Bevel1: TBevel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    LabeledEdit10: TLabeledEdit;
    ComboBox6: TComboBox;
    StaticText7: TStaticText;
    Memo1: TMemo;
    DateTimePicker3: TDateTimePicker;
    StaticText6: TStaticText;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
   id_client, id_vakans:integer;
   act:Tact;
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.FormActivate(Sender: TObject);
begin
  with Form1.ADOQuery5 do begin
   Close;
    SQL.Clear;
    SQL.Add('select id, name, adres, tel, dateRec');
    SQL.Add('from client');
    SQL.Add('where id='+IntToStr(Form6.id_client));
   Open;
  end;//with
 LabeledEdit1.Text:=Form1.ADOQuery5.FieldByName('name').AsString;
 LabeledEdit2.Text:=Form1.ADOQuery5.FieldByName('adres').AsString;
 LabeledEdit3.Text:=Form1.ADOQuery5.FieldByName('tel').AsString;

 if Form6.act=act_update then begin
   Button1.Visible:=false;
   Button2.Visible:=true;
    with Form1.ADOQuery5 do begin
     Close;
      SQL.Clear;
      SQL.Add('SELECT id, id_client, spec, opit, obraz, pol, razdel, vozr_1, vozr_2, plata, comment, razdel_id, obraz_id, opit_id, pol_id, resume, beseda, telbeseda, other, ClosedVakans, DateClose, DateOpen, endWork');
      SQL.Add('from vakans_all');
      SQL.Add('where (id='+IntToStr(Form6.id_vakans)+')');
//    SQL.Add('where (id='+IntToStr(Form6.id_vakans)+') and (id_client='+IntToStr(Form6.id_client)+')');
     Open;
    end;//with
  LabeledEdit4.Text:=form1.ADOQuery5.FieldByName('spec').AsString;

  Form6.ComboBox1.Items.AddStrings(Form1.razdel);
  Form6.ComboBox1.ItemIndex:=Form6.ComboBox1.Items.IndexOf(form1.ADOQuery5.FieldByName('razdel').AsString);

  Form6.ComboBox2.Items.AddStrings(Form1.opit);
  Form6.ComboBox2.ItemIndex:=Form6.ComboBox2.Items.IndexOf(form1.ADOQuery5.FieldByName('opit').AsString);

  Form6.ComboBox3.Items.AddStrings(Form1.obraz);
  Form6.ComboBox3.ItemIndex:=Form6.ComboBox3.Items.IndexOf(form1.ADOQuery5.FieldByName('obraz').AsString);

  Form6.ComboBox4.Items.AddStrings(Form1.pol);
  Form6.ComboBox4.ItemIndex:=Form6.ComboBox4.Items.IndexOf(form1.ADOQuery5.FieldByName('pol').AsString);

  Form6.Memo1.Lines.Assign(Form1.ADOQuery5.FieldByName('comment'));

  LabeledEdit5.Text:=form1.ADOQuery5.FieldByName('vozr_1').AsString;
  LabeledEdit6.Text:=form1.ADOQuery5.FieldByName('vozr_2').AsString;
  LabeledEdit7.Text:=form1.ADOQuery5.FieldByName('plata').AsString;

  CheckBox1.Checked:=form1.ADOQuery5.FieldByName('Resume').AsBoolean;
  CheckBox2.Checked:=form1.ADOQuery5.FieldByName('Beseda').AsBoolean;
  CheckBox3.Checked:=form1.ADOQuery5.FieldByName('TelBeseda').AsBoolean;
  LabeledEdit9.Text:=form1.ADOQuery5.FieldByName('other').AsString;

  CheckBox4.Checked:=Form1.ADOQuery5.FieldByName('ClosedVakans').AsBoolean;
  if CheckBox4.Checked then begin
    DateTimePicker1.Enabled:=true;
    DateTimePicker1.DateTime:=Form1.ADOQuery5.FieldByName('DateClose').AsDateTime
  end else DateTimePicker1.Enabled:=false;
   DateTimePicker1.DateTime:=Form1.ADOQuery5.FieldByName('EndWork').AsDateTime;
   DateTimePicker3.DateTime:=Form1.ADOQuery5.FieldByName('DateOpen').AsDateTime;
 end;//act=act_update

 if Form6.act=act_insert then begin
   Button1.Visible:=true;
   Button2.Visible:=false;
  Form6.ComboBox1.Items.AddStrings(Form1.razdel);
  Form6.ComboBox2.Items.AddStrings(Form1.opit);
  Form6.ComboBox3.Items.AddStrings(Form1.obraz);
  Form6.ComboBox4.Items.AddStrings(Form1.pol);
   with Form6.ADOQuery2 do begin
    Close;
    SQL.Clear;
    SQL.Add('select name from client');
    Open;
     First;
     while not EOF do begin
      Form6.ComboBox5.Items.Add(Fields[0].asString);
      Next;
     end;//while
   end;//with


 end;//act =act_insert

end;

procedure TForm6.Button2Click(Sender: TObject);
var
 razdel,opit,pol,obraz:integer;
begin
 with Form1.ADOQuery3 do begin
  Close;
   SQL.Clear;
   SQL.Add('select razdel1.id, opit1.id, pol1.id, obraz1.id');
   SQL.Add('FROM razdel1, opit1, pol1, obraz1');
   SQL.Add('WHERE (((razdel1.name)="'+ComboBox1.Text+'") AND ((opit1.name)="'+ComboBox2.Text+'") AND ((pol1.name)="'+ComboBox4.Text+'") AND ((obraz1.name)="'+ComboBox3.Text+'"))');
  Open;
 end;

 with Form6.ADOQuery1 do begin
  close;
   SQL.Clear;
   SQL.Add('select * from vakans');
   SQL.Add('where (id='+IntToStr(Form6.id_vakans)+') and (id_client='+IntToStr(Form6.id_client)+')');
  Open;

  razdel:=Form1.ADOQuery3.FieldByName('razdel1.id').AsInteger;
  if razdel=0 then razdel:=1;
  opit:=Form1.ADOQuery3.FieldByName('opit1.id').AsInteger;
  if opit=0 then opit:=2;
  pol:=Form1.ADOQuery3.FieldByName('pol1.id').AsInteger;
  if pol=0 then pol:=1;
  obraz:=Form1.ADOQuery3.FieldByName('obraz1.id').AsInteger;
  if obraz=0 then obraz:=2; 

  Edit;

  FieldByName('DateRec').AsDateTime:=now;
  FieldByName('spec').asString:=LabeledEdit4.Text;
  FieldByName('razdel').AsInteger:=razdel;
  FieldByName('opit').asInteger:=opit;
  FieldByName('pol').AsInteger:=pol;
  FieldByName('obraz').AsInteger:=obraz;
  FieldByName('vozr_1').AsString:=LabeledEdit5.Text;
  FieldByName('vozr_2').AsString:=LabeledEdit6.Text;
  FieldByName('plata').AsString:=LabeledEdit7.Text;
  FieldByName('comment').Assign(Form6.Memo1.Lines);
  FieldByName('Resume').AsBoolean:=CheckBox1.Checked;
  FieldByName('Beseda').AsBoolean:=CheckBox2.Checked;
  FieldByName('TelBeseda').AsBoolean:=CheckBox3.Checked;
  FieldByName('other').AsString:=LabeledEdit9.Text;

  FieldByName('ClosedVakans').AsBoolean:=CheckBox4.Checked;
  if CheckBox4.Checked then begin
    DateTimePicker1.Enabled:=true;
    FieldByName('DateClose').AsDateTime:=DateTimePicker1.DateTime;
  end;
   FieldByName('EndWork').AsDateTime:=DateTimePicker2.DateTime;
   FieldByName('DateOpen').AsDateTime:=DateTimePicker3.DateTime;
  Post;
 end;//with
 Form1.ADOQuery6.Close;
 Form1.ADOQuery6.Open;
// Form6.Close;
end;

procedure TForm6.LabeledEdit5Change(Sender: TObject);
var
 s:string;
begin
 s:=LabeledEdit5.Text;
end;

procedure TForm6.Button1Click(Sender: TObject);
var
 razdel,opit,pol,obraz:integer;
begin
  with Form1.ADOQuery3 do begin
  Close;
   SQL.Clear;
   SQL.Add('select razdel1.id, opit1.id, pol1.id, obraz1.id');
   SQL.Add('FROM razdel1, opit1, pol1, obraz1');
   SQL.Add('WHERE (((razdel1.name)="'+ComboBox1.Text+'") AND ((opit1.name)="'+ComboBox2.Text+'") AND ((pol1.name)="'+ComboBox4.Text+'") AND ((obraz1.name)="'+ComboBox3.Text+'"))');
  Open;
 end;

 with Form6.ADOQuery1 do begin
  close;
   SQL.Clear;
   SQL.Add('select * from vakans');
   SQL.Add('where (id='+IntToStr(Form6.id_vakans)+') and (id_client='+IntToStr(Form6.id_client)+')');
  Open;

   razdel:=Form1.ADOQuery3.FieldByName('razdel1.id').AsInteger;
  if razdel=0 then razdel:=1;
  opit:=Form1.ADOQuery3.FieldByName('opit1.id').AsInteger;
  if opit=0 then opit:=2;
  pol:=Form1.ADOQuery3.FieldByName('pol1.id').AsInteger;
  if pol=0 then pol:=1;
  obraz:=Form1.ADOQuery3.FieldByName('obraz1.id').AsInteger;
  if obraz=0 then obraz:=2;

  Insert;
  FieldByName('id_client').AsInteger:=Form6.id_client;
  FieldByName('DateRec').AsDateTime:=now;
  FieldByName('spec').asString:=LabeledEdit4.Text;
  FieldByName('razdel').AsInteger:=razdel;
  FieldByName('opit').asInteger:=opit;
  FieldByName('pol').AsInteger:=pol;
  FieldByName('obraz').AsInteger:=obraz;
  FieldByName('vozr_1').AsString:=LabeledEdit5.Text;
  FieldByName('vozr_2').AsString:=LabeledEdit6.Text;
  FieldByName('plata').AsString:=LabeledEdit7.Text;
  FieldByName('comment').Assign(Form6.Memo1.Lines);
  FieldByName('Resume').AsBoolean:=CheckBox1.Checked;
  FieldByName('Beseda').AsBoolean:=CheckBox2.Checked;
  FieldByName('TelBeseda').AsBoolean:=CheckBox3.Checked;
  FieldByName('other').AsString:=LabeledEdit9.Text;

  FieldByName('ClosedVakans').AsBoolean:=CheckBox4.Checked;
  if CheckBox4.Checked then begin
    DateTimePicker1.Enabled:=true;
    FieldByName('DateClose').AsDateTime:=DateTimePicker1.DateTime;
  end;
   FieldByName('EndWork').AsDateTime:=DateTimePicker1.DateTime;
   FieldByName('DateOpen').AsDateTime:=DateTimePicker3.DateTime;
  post;

 end;//with
  Form1.ADOQuery6.Close;
  Form1.ADOQuery6.Open;
  Form6.Close;
end;

procedure TForm6.CheckBox4Click(Sender: TObject);
begin
 DateTimePicker1.DateTime:=now;
 DateTimePicker1.Enabled:=not DateTimePicker1.Enabled;

end;

end.
