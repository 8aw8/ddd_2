unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit4, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, Menus,
  ComCtrls;

type
  TForm5 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    LabeledEdit4: TLabeledEdit;
    Memo1: TMemo;
    StaticText1: TStaticText;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    StaticText2: TStaticText;
    Memo2: TMemo;
    StaticText3: TStaticText;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    TabControl1: TTabControl;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    LabeledEdit19: TLabeledEdit;
    LabeledEdit20: TLabeledEdit;
    DateTimePicker2: TDateTimePicker;
    StaticText4: TStaticText;
    Memo3: TMemo;
    StaticText5: TStaticText;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    StaticText6: TStaticText;
    ComboBox1: TComboBox;
    StaticText7: TStaticText;
    ADOQuery2: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    act:Tact;
    id:integer;
    spec,tel,adres,name,num:string;
    opit,vozr_1,vozr_2,obraz,plata,pol,razdel,trud:integer;
    DateRec:TDateTime;
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses unit1;

procedure TForm5.FormActivate(Sender: TObject);
begin
 if act=act_update then begin
  Button1.Visible:=true;
  Button2.Visible:=true;
  Button3.Visible:=false;

  LabeledEdit1.Visible:=false;
  Combobox1.Visible:=true;
   Combobox1.Left:=8;
   Combobox1.Width:=450;

   With Form5.ADOQuery2 do begin
     Close;
      SQL.Clear;
      SQL.Add('select name');
      SQL.Add('from client');
     Open; First;

    ComboBox1.Items.Clear;
     while not EOF do begin
      ComboBox1.Items.Add(FieldByName('name').AsString);
      Next;
     end;//while
     close;
   end;//with

  with Form1.ADOQuery2 do begin
   Close;
    SQL.Clear;
    SQL.Add('select *');
    SQL.Add('from client');
    SQL.Add('where id='+IntToStr(Form5.id));
   Open;
  end;//with

// Form5.Height:=400;
 form5.DBGrid1.Visible:=true;
 with Form1.ADOQuery2 do begin
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(FieldByName('name').AsString);
  LabeledEdit1.Text:=FieldByName('name').AsString;
  LabeledEdit2.Text:=FieldByName('adres').AsString;
  LabeledEdit3.Text:=FieldByName('tel').AsString;
  LabeledEdit4.Text:=FieldByName('mail_adress').AsString;
  LabeledEdit3.Text:=FieldByName('tel').AsString;
  Memo1.Lines.Assign(FieldByName('profile'));
  DateTimePicker1.DateTime:=FieldbyName('DateCreate').AsDateTime;
  LabeledEdit5.Text:=FieldByName('regim').AsString;
  LabeledEdit6.Text:=FieldByName('CountRab').AsString;
  Memo2.Lines.Assign(FieldByName('comment'));
  LabeledEdit7.Text:=FieldByName('INN').AsString;
  LabeledEdit8.Text:=FieldByName('KPP').AsString;
  LabeledEdit9.Text:=FieldByName('bank').AsString;
  LabeledEdit10.Text:=FieldByName('rch').AsString;
  LabeledEdit11.Text:=FieldByName('kch').AsString;
  LabeledEdit12.Text:=FieldByName('BIK').AsString;
 end;//with

 TabControl1.Visible:=true;
 TabControl1.Tabs.Clear;
 with Form5.ADOQuery1 do begin
  Close;
   SQL.Clear;
   SQL.Add('select * from ContactMen');
   SQL.Add('where id_client='+IntToStr(Form5.id));
  Open;
  while not EOF do begin
   TabControl1.Tabs.Add(FieldByName('Familia').asString+' '+copy(FieldByName('Name').asString,1,1)+'.'+copy(FieldByName('Otch').asString,1,1)+'.');
    Next;
  end;//while

   First;
//  RecNo:=TabControl1.TabIndex+1;
   LabeledEdit13.Text:=FieldByName('Familia').AsString;
   LabeledEdit14.Text:=FieldByName('name').AsString;
   LabeledEdit15.Text:=FieldByName('otch').AsString;
   LabeledEdit16.Text:=FieldByName('Dolg').AsString;
   LabeledEdit17.Text:=FieldByName('tel').AsString;
   LabeledEdit18.Text:=FieldByName('Fax').AsString;
   LabeledEdit19.Text:=FieldByName('EMail').AsString;
   LabeledEdit20.Text:=FieldByName('web').AsString;
   DateTimePicker2.DateTime:=FieldByName('DateRogd').AsDateTime;
   Memo3.Lines.Assign(FieldByName('comment'));
  
 end;//with

   with Form1.ADOQuery6 do begin
    Close;
     SQL.Clear;
     SQL.Text:='select * from vakans where (not ClosedVakans)and(id_client='+IntToStr(Form5.id)+')';
    Open;
   end;//with

 end;//act=act_update

 if act=act_insert then begin
// Form5.Height:=165;
 form5.DBGrid1.Visible:=false;
  Button1.Visible:=false;
  Button2.Visible:=false;
  Button3.Visible:=true;
 TabControl1.Visible:=false;

 LabeledEdit1.Visible:=true;
 Combobox1.Visible:=false;
   LabeledEdit1.Left:=8;
   LabeledEdit1.Width:=450;

  // LabeledEdit1.Text:=Form1.ADOQuery2.FieldByName('name').AsString;
  // LabeledEdit2.Text:=Form1.ADOQuery2.FieldByName('adres').AsString;
  // LabeledEdit3.Text:=Form1.ADOQuery2.FieldByName('tel').AsString;
 end;//act=act_insert


end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 with Form1.ADOQuery2 do begin
  open;edit;
  FieldByName('name').AsString:=LabeledEdit1.Text;
  FieldByName('adres').AsString:=LabeledEdit2.Text;
  FieldByName('tel').AsString:=LabeledEdit3.Text;
  FieldByName('mail_adress').AsString:=LabeledEdit4.Text;
  FieldByName('profile').Assign(Memo1.Lines);
  FieldbyName('DateCreate').AsDateTime:=DateTimePicker1.DateTime;
  FieldByName('regim').AsString:=LabeledEdit5.Text;
  FieldByName('CountRab').AsString:=LabeledEdit6.Text;
  FieldByName('comment').Assign(Memo2.Lines);
  FieldByName('INN').AsString:=LabeledEdit7.Text;
  FieldByName('KPP').AsString:=LabeledEdit8.Text;
  FieldByName('bank').AsString:=LabeledEdit9.Text;
  FieldByName('rch').AsString:=LabeledEdit10.Text;
  FieldByName('kch').AsString:=LabeledEdit11.Text;
  FieldByName('BIK').AsString:=LabeledEdit12.Text;
  post; close;
 end;//with


{ with Form1.ADOQuery2 do begin
 Open; edit;
  FieldByName('name').AsString:=LabeledEdit1.Text;
  FieldByName('adres').AsString:=LabeledEdit2.Text;
  FieldByName('tel').AsString:=LabeledEdit3.Text;
 Post;
 end;//with}
end;

procedure TForm5.Button3Click(Sender: TObject);
var
 dt:TDateTime;
begin
 
 with Form1.ADOTable2 do begin
   TableName:='client';
   Open; Insert;
 FieldByName('name').AsString:=LabeledEdit1.Text;
  FieldByName('adres').AsString:=LabeledEdit2.Text;
  FieldByName('tel').AsString:=LabeledEdit3.Text;
  FieldByName('mail_adress').AsString:=LabeledEdit4.Text;
  FieldByName('profile').Assign(Memo1.Lines);
  FieldbyName('DateCreate').AsDateTime:=DateTimePicker1.DateTime;
  FieldByName('regim').AsString:=LabeledEdit5.Text;
  FieldByName('CountRab').AsString:=LabeledEdit6.Text;
  FieldByName('comment').Assign(Memo2.Lines);
  FieldByName('INN').AsString:=LabeledEdit7.Text;
  FieldByName('KPP').AsString:=LabeledEdit8.Text;
  FieldByName('bank').AsString:=LabeledEdit9.Text;
  FieldByName('rch').AsString:=LabeledEdit10.Text;
  FieldByName('kch').AsString:=LabeledEdit11.Text;
  FieldByName('BIK').AsString:=LabeledEdit12.Text;
    dt:=now;
    FieldByName('DateRec').AsDateTime:=dt;
   Post;
  Form5.id:=Form1.ADOTable2.FieldByName('id').AsInteger;
   close;
 end;//with
  Form5.act:=act_update;
  Form5.Activate;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
 Form1.AddVakans(Form5.id,Form1.ADOQuery6.FieldByName('id').asInteger, act_insert);
end;

procedure TForm5.N1Click(Sender: TObject);
begin
 Form1.AddVakans(Form5.id,Form1.ADOQuery6.FieldByName('id').asInteger, act_update);
end;

procedure TForm5.N3Click(Sender: TObject);
begin
 if MessageBox(Form5.Handle,'�� ������������� ������ ������� ��� ��������?','�������� ��������',mb_yesno)=6 then
  if (Form1.ADOQuery6.RecordCount<>0) then begin
  with Form1.ADOQueryDel do begin
    SQL.Clear;
    SQL.Add('delete from work_rab');
    SQL.Add('where id_vakans='+IntToStr(Form1.ADOQuery6.FieldByName('id').asInteger));
  end;//with}

  with Form1.ADOQuery6 do begin
    Open;
    Delete;
 //   post;
  end;//with
 end;//if

end;

procedure TForm5.TabControl1Change(Sender: TObject);
begin
 with  Form5.ADOQuery1 do begin
  First;
  RecNo:=TabControl1.TabIndex+1;
  LabeledEdit13.Text:=FieldByName('Familia').AsString;
  LabeledEdit14.Text:=FieldByName('name').AsString;
  LabeledEdit15.Text:=FieldByName('otch').AsString;
  LabeledEdit16.Text:=FieldByName('Dolg').AsString;
  LabeledEdit17.Text:=FieldByName('tel').AsString;
  LabeledEdit18.Text:=FieldByName('Fax').AsString;
  LabeledEdit19.Text:=FieldByName('EMail').AsString;
  LabeledEdit20.Text:=FieldByName('web').AsString;
  DateTimePicker2.DateTime:=FieldByName('DateRogd').AsDateTime;
  Memo3.Lines.Assign(FieldByName('comment'));
 end;//with

end;

procedure TForm5.Button5Click(Sender: TObject);
begin
 with  Form5.ADOQuery1 do begin
  Open;
  First;
  RecNo:=TabControl1.TabIndex+1;
  Edit;
   FieldByName('Familia').AsString:=LabeledEdit13.Text;
   FieldByName('name').AsString:=LabeledEdit14.Text;
   FieldByName('otch').AsString:=LabeledEdit15.Text;
   FieldByName('Dolg').AsString:=LabeledEdit16.Text;
   FieldByName('tel').AsString:=LabeledEdit17.Text;
   FieldByName('Fax').AsString:=LabeledEdit18.Text;
   FieldByName('EMail').AsString:=LabeledEdit19.Text;
   FieldByName('web').AsString:=LabeledEdit20.Text;
   FieldByName('DateRogd').AsDateTime:=DateTimePicker2.DateTime;
   FieldByName('comment').Assign(Memo3.Lines);
  Post;
  TabControl1.Tabs.Strings[TabControl1.TabIndex]:=FieldByName('Familia').asString+' '+copy(FieldByName('Name').asString,1,1)+'.'+copy(FieldByName('Otch').asString,1,1)+'.';
 end;//with

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
if Form5.act=act_update then
 with  Form5.ADOQuery1 do begin
  Open;
  Insert;
   FieldByName('id_client').AsInteger:=Form5.id;
  Post;
  TabControl1.TabIndex:=TabControl1.Tabs.Add('�����');
 end;//with


end;

procedure TForm5.Button6Click(Sender: TObject);
begin
 if MessageBox(Form5.Handle,'�� ������ ������� ������ ���������� ����','�������� ����������� ����',mb_yesno)=6 then begin
  Form5.ADOQuery1.RecNo:=TabControl1.TabIndex+1;
  Form5.ADOQuery1.Open;
  Form5.ADOQuery1.Delete;
  TabControl1.Tabs.Delete(TabControl1.TabIndex);
 end;//if

end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
 with Form5.ADOQuery2 do begin
  Close;
   SQL.Clear;
   SQL.Add('select id from client');
   SQL.Add('where name='''+ComboBox1.Items.Strings[ComboBox1.ItemIndex]+'''');
  Open;
  Form5.id:=FieldByName('id').AsInteger;
 end;//with
   Form5.act:=act_update;
   Form5.Activate;
end;

end.
