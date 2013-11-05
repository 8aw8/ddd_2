unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ADODB, DB, ExtDlgs, jpeg, DBCtrls, comobj, unit4,
  ComCtrls;

type
  TForm2 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    ComboBox1: TComboBox;
    StaticText1: TStaticText;
    ComboBox2: TComboBox;
    StaticText2: TStaticText;
    ComboBox3: TComboBox;
    StaticText3: TStaticText;
    ComboBox4: TComboBox;
    StaticText4: TStaticText;
    Button4: TButton;
    ADOCommand1: TADOCommand;
    ADOTable2: TADOTable;
    ADOTable1: TADOTable;
    Memo1: TMemo;
    StaticText5: TStaticText;
    DataSourcefoto: TDataSource;
    Memo2: TMemo;
    StaticText6: TStaticText;
    Memo3: TMemo;
    Memo4: TMemo;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DateTimePicker1: TDateTimePicker;
    StaticText9: TStaticText;
    ComboBox5: TComboBox;
    StaticText10: TStaticText;
    Edit1: TEdit;
    StaticText11: TStaticText;
    StaticText8: TStaticText;
    StaticText7: TStaticText;
    ComboBox6: TComboBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    ADOQueryFoto: TADOQuery;
    LabeledEdit4: TLabeledEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure LabeledEdit7Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    act:Tact;
    id:string;
    name,tel,adres,spec,id_q:string;
    opit,vozr,obraz,plata,pol,razdel,trud:integer;
    datarec:TDateTime;
    foto:TBitmap; fotoExist:Boolean;
         { Public declarations }
  end;


var
  Form2: TForm2;

implementation

uses Unit3, Unit1, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
var
  num,i:integer;
begin
if act=act_update then begin
 with ADOQueryFoto do begin
   Close;
    sql.Clear;
    sql.Add('select foto from resume where id='+Form2.id);
   Open;
  end;//with

  with Form1.ADOQuery2 do begin
   Close;
    sql.Clear;
    sql.Add('select * from resume where id='+Form2.id);
   Open;
  end;//with
 with Form1.ADOQuery2 do begin
   Form2.name:=FieldByName('name').AsString;
   tel:=FieldByName('tel').AsString;
   adres:=FieldByName('adres').AsString;
   spec:=FieldByName('spec').AsString;
   id_q:=FieldByName('id_q').AsString;
   opit:=FieldByName('opit').AsInteger;
   vozr:=FieldByName('vozr').AsInteger;
   obraz:=FieldByName('obraz').AsInteger;
   plata:=FieldByName('plata').AsInteger;
   pol:=FieldByName('pol').AsInteger;
   razdel:=FieldByName('razdel').AsInteger;
   trud:=FieldByName('trud').AsInteger;
   DataRec:=FieldByName('DateRec').AsDateTime;
   DateTimePicker1.DateTime:=FieldByName('DateRogd').AsDateTime;
   Edit1.Text:=FieldByName('vozr').AsString;
   LabeledEdit7.Text:=FieldByName('plata').AsString;
   LabeledEdit4.Text:=FieldByName('num').AsString;

   Memo1.lines.Assign(FieldByName('comment'));
   Memo2.lines.Assign(FieldByName('prim'));
   Memo3.lines.Assign(FieldByName('op_rab'));
   Memo4.lines.Assign(FieldByName('op_ych'));

   ComboBox5.Items.Clear;
   ComboBox5.Items.AddStrings(Form1.brak);
   ComboBox5.ItemIndex:=ComboBox5.Items.IndexOf(FieldByName('brak').AsString);
  
 end;//with
 LabeledEdit1.Text:=name;
 LabeledEdit2.Text:=adres;
 LabeledEdit3.Text:=tel;
// LabeledEdit4.Text:=id;
 LabeledEdit5.Text:=DateToStr(DataRec);
 LabeledEdit6.Text:=spec;

 Button1.Visible:=true;
 Button3.Visible:=true;
 Button3.Enabled:=true;
 Button4.Visible:=false;
 Button5.Visible:=true;
 Button6.Visible:=true;
 Button7.Visible:=true;
 Button8.Visible:=true;
 Button9.Visible:=true;
 Button10.Visible:=true;

 dbImage1.Visible:=true;
 Form1.ADOQuery2.Close;
end;// if act = act_update
if Form2.act=act_insert then begin
 with ADOQueryFoto do begin
   Close;
    sql.Clear;
    sql.Add('select foto from resume');
   Open;
  end;//with
 LabeledEdit1.Text:='name';
 LabeledEdit2.Text:='adres';
 LabeledEdit3.Text:='tel';
 LabeledEdit6.Text:='spec';

 dbImage1.Visible:=false;
 Button1.Visible:=false;
 Button3.Visible:=false;
 Button4.Visible:=true;
 Button5.Visible:=false;
 Button6.Visible:=false;
 Button7.Visible:=false;
 Button8.Visible:=false;
 Button9.Visible:=false;
 Button10.Visible:=false;

   ComboBox5.Items.Clear;
   ComboBox5.Items.AddStrings(Form1.brak);
   ComboBox5.ItemIndex:=0;

end;// if act = act_insert

//opit
 with Form2.ADOTable1 do begin
  Close; TableName:='opit1'; Open; First;i:=0;
  repeat
   num:=Form2.ComboBox1.Items.Add(FieldByName('name').AsString);
   if FieldByName('id').AsInteger=opit then i:=num;
   Next;
  until Eof;
   Form2.ComboBox1.ItemIndex:=i;
 end;//with


//obraz
 with Form2.ADOTable1 do begin
  Close; TableName:='obraz1'; Open; First;i:=0;
  repeat
   num:=Form2.ComboBox2.Items.Add(FieldByName('name').AsString);
   if FieldByName('id').AsInteger=obraz then i:=num;
   Next;
  until Eof;
   Form2.ComboBox2.ItemIndex:=i;
 end;//with
//razdel
 with Form2.ADOTable1 do begin
  Close; TableName:='razdel1'; Open; First;i:=0;
  repeat
   num:=Form2.ComboBox3.Items.Add(FieldByName('name').AsString);
   if FieldByName('id').AsInteger=razdel then i:=num;
   Next;
  until Eof;
   Form2.ComboBox3.ItemIndex:=i;
 end;//with

 //pol
 with Form2.ADOTable1 do begin
  Close; TableName:='pol1'; Open; First;i:=0;
  repeat
   num:=Form2.ComboBox4.Items.Add(FieldByName('name').AsString);
   if FieldByName('id').AsInteger=pol then i:=num;
   Next;
  until Eof;
   Form2.ComboBox4.ItemIndex:=i;
 end;//with

 Form2.ComboBox6.Items.AddStrings(Form1.status);
 Form2.ComboBox6.ItemIndex:=Form2.ComboBox6.Items.IndexOf(id_q);

end;

procedure TForm2.Button1Click(Sender: TObject);
var
 s,s1:string;
  jpg:TJPEGImage;
  rect:Trect;
begin
 if OpenPictureDialog1.Execute then begin
  s:=OpenPictureDialog1.FileName;
  s1:=copy(s,Length(s)-2,3);

  jpg:=TJPEGImage.Create;
  jpg.LoadFromFile(s);
  rect.Left:=0;
  rect.Top:=0;
  rect.Right:=jpg.Width div 2;
  rect.Bottom:=jpg.Height div 2;

if (Form2.act=act_update) then ADOQueryFoto.Edit
else if (Form2.act=act_insert) then ADOQueryFoto.Insert;

  DBImage1.Picture.Bitmap.Assign(jpg);
  DBImage1.Picture.Bitmap.Canvas.StretchDraw(rect,jpg);
  DBImage1.Picture.Bitmap.Width:=rect.Right;
  DBImage1.Picture.Bitmap.Height:=rect.Bottom;

  ADOQueryfoto.Post;

  jpg.Free;

 end; //if

end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  with ADOQuery1 do begin
   Close;
   SQL.Clear;
 if not (foto=nil) then begin
  SQL.Text:='update resume set foto=:img where id=:id1';
  parameters.parseSQL(ADOquery1.sql.text, true);
  parameters.parambyname('img').Assign(foto);
  parameters.parambyname('id1').Value:=Form2.id;
 end
 else begin
   SQL.Text:='update resume set foto=null where id='+Form2.id;
 end;//if
   ExecSQL;
  end;//with
end;

procedure TForm2.FormDeactivate(Sender: TObject);
begin
 ADOQueryFoto.Close;
// Form1.DataSource1.DataSet.Close;
// Form1.DataSource1.DataSet.Open;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
//Label1.Caption:=IntToStr((ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TIDList).Id);

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 Form1.FindVakans(StrToInt(Form2.Id));
end;

procedure TForm2.Button4Click(Sender: TObject);
//============================================
var
 i:integer;
 s,s1:string;
 dt:TdateTime;
//------------------------------------------------
 function add:string;
    begin
      with Form1.ADOQuery3 do begin
  Close;
   sql.Clear;
   SQL.Add('select razdel1.id, opit1.id, pol1.id, obraz1.id');
   SQL.Add('FROM razdel1, opit1, pol1, obraz1');
   SQL.Add('WHERE (((razdel1.name)="'+ComboBox3.Text+'") AND ((opit1.name)="'+ComboBox1.Text+'") AND ((pol1.name)="'+ComboBox4.Text+'") AND ((obraz1.name)="'+ComboBox2.Text+'"))');
  Open;
 end;

 with Form2.ADOTable2 do begin
   TableName:='resume';
   Open;  Insert;
   dt:=now;
   FieldByName('name').AsString:=LabeledEdit1.Text;
   FieldByName('adres').AsString:=LabeledEdit2.Text;
   FieldByName('tel').AsString:=LabeledEdit3.Text;
   FieldByName('spec').AsString:=LabeledEdit6.Text;
   FieldByName('DateRec').AsDateTime:=dt;
   FieldByName('DateRogd').AsDateTime:=DateTimePicker1.DateTime;
   FieldByName('obraz').AsInteger:=Form1.ADOQuery3.FieldByName('obraz1.id').AsInteger;
   FieldByName('pol').AsInteger:=Form1.ADOQuery3.FieldByName('pol1.id').AsInteger;
   FieldByName('razdel').AsInteger:=Form1.ADOQuery3.FieldByName('razdel1.id').AsInteger;
   FieldByName('opit').AsInteger:=Form1.ADOQuery3.FieldByName('opit1.id').AsInteger;
   FieldByName('comment').Assign(Memo1.Lines);
   FieldByName('prim').Assign(Memo2.Lines);
   FieldByName('op_rab').Assign(Memo3.Lines);
   FieldByName('op_ych').Assign(Memo4.Lines);
   FieldByName('num').AsString:=Form2.LabeledEdit4.Text;
   FieldByName('brak').AsString:=ComboBox5.Text;
   FieldByName('vozr').AsString:=Edit1.Text;
   FieldByName('plata').AsString:=LabeledEdit7.Text;
   FieldByName('id_q').AsString:=ComboBox6.Text;
   
   post;
   result:= FieldByName('id').AsString;
   close;
 end;//with

    end;
//-----------------------------------------------

begin

if Form2.act=act_insert then begin
 s:=LabeledEdit1.Text;
 i:=0;
 repeat
  inc(i);
 until (s[i]=' ')or(i=length(s));
 s1:=copy(s,1,i-1);

 with Form1.ADOQuery3 do begin
  Close;
   sql.Clear;
   SQL.Add('select id');
   SQL.Add('FROM resume');
   SQL.Add('WHERE (name LIKE "%'+s1+'%")');
  Open;
 end;

 if Form1.ADOQuery3.RecordCount=0 then begin
  Form2.id:=add;
  Form2.act:=act_update;
  Form2.Activate;
 end
 else
 if (messageBox(Form2.Handle,'Кандидат с таким именем уже существует. Добавить нового кандидата?','Добавление нового кандидата',mb_yesno)=6)
  then begin
   Form2.id:=add;
   Form2.act:=act_update;
   Form2.Activate;
  end;//if messagebox

 end//if act = insert
else ShowMessage('облом');

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
 LabeledEdit1.Text:='name';
 LabeledEdit2.Text:='adres';
 LabeledEdit3.Text:='tel';
 LabeledEdit6.Text:='spec';
 comboBox1.ItemIndex:=0;
 comboBox2.ItemIndex:=0;
 comboBox3.ItemIndex:=0;
 comboBox4.ItemIndex:=0;
 Memo1.Lines.Clear;
 Memo2.Lines.Clear;
 Memo3.Lines.Clear;
 Memo4.Lines.Clear;
 Button3.Visible:=false;
 Button4.Visible:=true;
 Button5.Visible:=false;
 Button6.Visible:=false;

 Form2.act:=act_insert;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
 dt:TdateTime;
begin
if Form2.act=act_update then begin
 with Form1.ADOQuery3 do begin
  Close;
   sql.Clear;
   SQL.Add('select razdel1.id, opit1.id, pol1.id, obraz1.id');
   SQL.Add('FROM razdel1, opit1, pol1, obraz1');
   SQL.Add('WHERE (((razdel1.name)="'+ComboBox3.Text+'") AND ((opit1.name)="'+ComboBox1.Text+'") AND ((pol1.name)="'+ComboBox4.Text+'") AND ((obraz1.name)="'+ComboBox2.Text+'"))');
  Open;
 end;

 with Form1.ADOQuery2 do begin
 //  TableName:='resume';
  dt:=now;
   Open;  Edit;
   FieldByName('name').AsString:=LabeledEdit1.Text;
   FieldByName('adres').AsString:=LabeledEdit2.Text;
   FieldByName('tel').AsString:=LabeledEdit3.Text;
   FieldByName('spec').AsString:=LabeledEdit6.Text;
   FieldByName('DateRec').AsDateTime:=dt;
   FieldByName('DateRogd').AsDateTime:=DateTimePicker1.DateTime;
   FieldByName('obraz').AsInteger:=Form1.ADOQuery3.FieldByName('obraz1.id').AsInteger;
   FieldByName('pol').AsInteger:=Form1.ADOQuery3.FieldByName('pol1.id').AsInteger;
   FieldByName('razdel').AsInteger:=Form1.ADOQuery3.FieldByName('razdel1.id').AsInteger;
   FieldByName('opit').AsInteger:=Form1.ADOQuery3.FieldByName('opit1.id').AsInteger;
   FieldByName('comment').Assign(Memo1.Lines);
   FieldByName('prim').Assign(Memo2.Lines);
   FieldByName('op_rab').Assign(Memo3.Lines);
   FieldByName('op_ych').Assign(Memo4.Lines);
   FieldByName('num').AsString:=LabeledEdit4.Text;
   FieldByName('brak').AsString:=ComboBox5.Text;
   FieldByName('vozr').AsString:=Edit1.Text;
   FieldByName('plata').AsString:=LabeledEdit7.Text;
   FieldByName('id_q').AsString:=ComboBox6.Text;

   post;
//   close;
 end;//with
 LabeledEdit5.Text:=DateToStr(dt);
end;//if act=act_update

end;

procedure TForm2.Button7Click(Sender: TObject);
var
   wd,rep,oldstr,newstr : Olevariant;
  s,F1,f:string;
  i:integer;
  MatchCase,MatchWholeWord,MatchWildcards, MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1:OleVariant;
  jpg:TJPEGImage;
begin
{ with Form1.ADOQuery2 do begin
   Open;
   FieldByName('name').AsString:=LabeledEdit1.Text;
   FieldByName('adres').AsString:=LabeledEdit2.Text;
   FieldByName('tel').AsString:=LabeledEdit3.Text;
 end;//with}

  Form1.ADOQuery2.Open;

  wd:=CreateOleObject('Word.application');
  wd.visible:=true;
  F:=ExtractfilePath(Application.Exename)+'rezyme.dot';
  wd.application.documents.open(F);
   MatchCase:=false;
   MatchWholeWord:=false;
    MatchWildcards:=false;
     MatchSoundsLike:=false;
      MatchAllWordForms:=false;
       Forward1:=false;
        Wrap1:=1;
        Format1:=false;

  rep:=1; OldStr:='@name';newSTr:=Form1.ADOQuery2.fieldByName('name').AsString;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);

  rep:=1;OldStr:='@target';newSTr:=Form1.ADOQuery2.fieldByName('spec').AsString;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);

  rep:=1;OldStr:='@old';newSTr:=form1.ADOQuery2.FieldByName('vozr').AsInteger;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);

  rep:=1;OldStr:='@rogd';newSTr:=DateToStr(form1.ADOQuery2.FieldByName('DateRogd').AsDateTime);
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);

  rep:=1;OldStr:='@brak';newSTr:=form1.ADOQuery2.FieldByName('brak').AsString;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);


 // wd.application.activedocument.Shapes.item(5).TextFrame.TextRange:=Memo1.Lines.Text;
 // wd.application.activedocument.Shapes.item(5).height:=Memo1.Lines.Count*16;

  s:=''; //Дополнительные сведенья
  for i:=0 to Memo1.Lines.count-1 do
   if not(Memo1.Lines.Strings[i]='') then s:=s+Memo1.Lines.Strings[i]+chr(13);

  wd.application.activedocument.Shapes.item(5).TextFrame.TextRange:=s;

  s:='';   //Опыт работы
  for i:=0 to Memo3.Lines.count-1 do
   if not(Memo3.Lines.Strings[i]='') then s:=s+Memo3.Lines.Strings[i]+chr(13);


  wd.application.activedocument.Shapes.item(2).TextFrame.TextRange:=s;
//  wd.application.activedocument.Shapes.item(4).TextFrame.TextRange:=s;


  s:='';  //Образование
  for i:=0 to Memo4.Lines.count-1 do
   if not(Memo4.Lines.Strings[i]='') then s:=s+Memo4.Lines.Strings[i]+chr(13);


  wd.application.activedocument.Shapes.item(3).TextFrame.TextRange:=s;
//  wd.application.activedocument.Shapes.item(4).height:=Count*16+4;


if not(ADOQueryFoto.FieldByName('foto').IsNull) then begin
 jpg:=TJPEGImage.Create;
  jpg.Assign(DbImage1.Picture.Bitmap);
  jpg.JPEGNeeded;
  jpg.SaveToFile('c:\temp.jpg');
 jpg.Free;

  wd.application.ActiveDocument.shapes.AddPicture('c:\temp.jpg', emptyparam,emptyparam, 260,0,133,90);

end;//if



 //  wd.application.activedocument.Shapes.item(1).TextFrame.TextRange:='sdvcsvcsfdv'+chr(13)+'Новая строка';
{
   rep:=1;OldStr:='@opit';newSTr:=Memo3.Lines.ValueFromIndex[0]+chr(13)+Memo3.Lines.ValueFromIndex[1];
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);


     rep:=1;OldStr:='@obraz';newSTr:=op_ych;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);

        rep:=1;OldStr:='@prim';newSTr:=comment;
  wd.application.activedocument.range.find.execute(oldstr,MatchCase,MatchWholeWord,MatchWildcards,
   MatchSoundsLike,MatchAllWordForms,Forward1,Wrap1,Format1,newstr,rep);
}
   F1:=ExtractfilePath(Application.Exename)+Form1.ADOQuery2.fieldByName('name').AsString+'.doc';
   wd.application.activedocument.saveas(F1);
 Form1.ADOQuery2.Close;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  Edit1.Text:=filterStr(Edit1.Text);
end;

procedure TForm2.LabeledEdit7Change(Sender: TObject);
begin
  LabeledEdit7.Text:=filterStr(LabeledEdit7.Text);
end;

procedure TForm2.Button8Click(Sender: TObject);
var
 dt:TDateTime;
begin
 with Form1.ADOQuery3 do begin
  Close;
   sql.Clear;
   SQL.Add('select razdel1.id, opit1.id, pol1.id, obraz1.id');
   SQL.Add('FROM razdel1, opit1, pol1, obraz1');
   SQL.Add('WHERE (((razdel1.name)="'+ComboBox3.Text+'") AND ((opit1.name)="'+ComboBox1.Text+'") AND ((pol1.name)="'+ComboBox4.Text+'") AND ((obraz1.name)="'+ComboBox2.Text+'"))');
  Open;
 end;

  with Form1.ADOTable2 do begin
   TableName:='resume';
   Open;  Insert;
   dt:=now;
  LabeledEdit6.Text:='';
  Combobox3.ItemIndex:=0;
   FieldByName('name').AsString:=LabeledEdit1.Text;
   FieldByName('adres').AsString:=LabeledEdit2.Text;
   FieldByName('tel').AsString:=LabeledEdit3.Text;
//   FieldByName('spec').AsString:=LabeledEdit6.Text;
   FieldByName('DateRec').AsDateTime:=dt;
   FieldByName('DateRogd').AsDateTime:=DateTimePicker1.DateTime;
   FieldByName('obraz').AsInteger:=Form1.ADOQuery3.FieldByName('obraz1.id').AsInteger;
   FieldByName('pol').AsInteger:=Form1.ADOQuery3.FieldByName('pol1.id').AsInteger;
//   FieldByName('razdel').AsInteger:=Form1.ADOQuery3.FieldByName('razdel1.id').AsInteger;
   FieldByName('opit').AsInteger:=Form1.ADOQuery3.FieldByName('opit1.id').AsInteger;
   FieldByName('comment').Assign(Memo1.Lines);
   FieldByName('prim').Assign(Memo2.Lines);
   FieldByName('op_rab').Assign(Memo3.Lines);
   FieldByName('op_ych').Assign(Memo4.Lines);
   FieldByName('num').AsString:=Form2.LabeledEdit4.Text;
   FieldByName('brak').AsString:=ComboBox5.Text;
   FieldByName('vozr').AsString:=Edit1.Text;
   FieldByName('plata').AsString:=LabeledEdit7.Text;
   FieldByName('id_q').AsString:=ComboBox6.Text;

   post;
   Form2.id:=FieldByName('id').AsString;
   close;
 end;//with
    Form2.Activate;

end;

procedure TForm2.Button9Click(Sender: TObject);
begin
 Form8:=TForm8.Create(Form1);
 try
  Form8.id:=StrToInt(Form2.id);
  Form8.ShowModal;
 finally
  Form8.Close;
 end;
  Form8.Free;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
 Form9.show;
 if (Form9.Index.IndexOf(Form2.id)=-1) then begin
   Form9.Index.Add(Form2.id);
   Form9.CheckListBox1.Items.Add(LabeledEdit1.Text+' '+LabeledEdit6.Text);
 end;//if
end;

end.
