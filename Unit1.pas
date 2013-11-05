unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  unit2, unit4, unit5, unit6, unit9, Buttons, jpeg;
type

  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    TreeView1: TTreeView;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    _N3: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    _N13: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    _N17: TMenuItem;
    N17: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    DateTimePicker2: TDateTimePicker;
    StaticText2: TStaticText;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    CheckBox3: TCheckBox;
    Edit2: TEdit;
    Splitter1: TSplitter;
    PopupMenu1: TPopupMenu;
    N18: TMenuItem;
    ADOQuery1: TADOQuery;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    _N23: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    _N25: TMenuItem;
    ADOQuery3: TADOQuery;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Button2: TButton;
    ADOQuery4: TADOQuery;
    PopupMenu2: TPopupMenu;
    N25: TMenuItem;
    N26: TMenuItem;
    _N27: TMenuItem;
    N27: TMenuItem;
    Button3: TButton;
    DBGrid3: TDBGrid;
    N19: TMenuItem;
    N28: TMenuItem;
    _N29: TMenuItem;
    PopupMenu3: TPopupMenu;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    _N32: TMenuItem;
    ADOQuery6: TADOQuery;
    ADOQuery5: TADOQuery;
    PopupMenu4: TPopupMenu;
    N32: TMenuItem;
    N33: TMenuItem;
    ADOQuery7: TADOQuery;
    DataSource2: TDataSource;
    Label2: TLabel;
    ComboBox1: TComboBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    CheckBox6: TCheckBox;
    ComboBox3: TComboBox;
    CheckBox7: TCheckBox;
    Edit5: TEdit;
    CheckBox8: TCheckBox;
    Edit6: TEdit;
    StaticText1: TStaticText;
    CheckBox9: TCheckBox;
    Edit8: TEdit;
    Label3: TLabel;
    Edit9: TEdit;
    CheckBox10: TCheckBox;
    ComboBox4: TComboBox;
    CheckBox11: TCheckBox;
    Edit10: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    _N34: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    Edit11: TEdit;
    ComboBox5: TComboBox;
    StaticText3: TStaticText;
    Panel3: TPanel;
    Label4: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    Button7: TButton;
    N39: TMenuItem;
    GroupBox1: TGroupBox;
    DBGrid4: TDBGrid;
    PopupMenu5: TPopupMenu;
    Panel4: TPanel;
    Label5: TLabel;
    ControlBar1: TControlBar;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    LabeledEdit1: TLabeledEdit;
    Button8: TButton;
    LabeledEdit2: TLabeledEdit;
    Button9: TButton;
    ADOTable2: TADOTable;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    _N43: TMenuItem;
    Image1: TImage;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure N19Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N38Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    ADOQuery_inet:TADOQuery;
    { Private declarations }
  public
   table:string;
   brak,status,opit,razdel,pol,obraz :TStringList;
   tip:integer;
   recNumber:integer;
//   Index:TStringList;
    AdoTableSprav:TADOTable;
    ADOQuerydel:TADOQuery;

   procedure OpenKandidat(id:integer;act:Tact);
   procedure FindVakans(id:integer);
   procedure OpenClient(id:integer;act:TAct);
   procedure AddVakans(id_client,id_vakans:integer; act:TAct);
   Procedure AddVip(var index:TStringList; var name:TStringList);
    { Public declarations }
  end;


var
  Form1: TForm1;


implementation

uses Unit3, Unit7, Unit11, unit12;

{$R *.dfm}


procedure TForm1.OpenKandidat;
 begin
   Form2:=TForm2.Create(Form1);
 try
  Form2.id:=IntToStr(ID); //
  Form2.act:=act;
  Form2.ShowModal;
 finally
  Form2.Close;
 end;
 Form2.Free;
 end;

procedure TForm1.FindVakans;
begin
  Form3:=TForm3.Create(Form1);
 try
  Form3.id:= id;//Form1.DataSource1.DataSet.FieldByName('id').AsInteger;
  with ADOQuery2 do begin
   Close;
    sql.Clear;
    sql.Add('select * from resume where id='+intToStr(Form3.id));
   Open;
   Form3.Edit7.Text:=FieldByName('name').AsString;
   Form3.opit:=FieldByName('opit').AsInteger;
   Form3.vozr:=FieldByName('vozr').AsInteger;
   Form3.obraz:=FieldByName('obraz').AsInteger;
   Form3.pol:=FieldByName('pol').AsInteger;
   Form3.razdel:=FieldByName('razdel').AsInteger;
   Form3.spec:=FieldByName('spec').AsString;
 end;//with
 with ADOQuery3 do begin
  Close;
   SQL.Clear;
   SQL.Add('select razdel1.name, opit1.name, pol1.name, obraz1.name');
   SQL.Add('from razdel1, opit1, pol1, obraz1');
   SQL.Add('where (razdel1.id='+IntToStr(Form3.razdel)+')and');
   SQL.Add('(opit1.id='+IntToStr(Form3.opit)+')and');
   SQL.Add('(pol1.id='+IntToStr(Form3.pol)+')and(obraz1.id='+IntToStr(Form3.obraz)+')');
  Open;
  Form3.Edit1.Text:=FieldbyName('razdel1.name').asString;
  Form3.Edit2.Text:=Form3.spec;
  Form3.Edit3.Text:=FieldbyName('obraz1.name').asString;
  Form3.Edit4.Text:=FieldbyName('opit1.name').asString;
  Form3.Edit5.Text:=FieldbyName('pol1.name').asString;
 end;
  Form3.ShowModal;
 finally
  Form3.Close;
 end;
 Form3.Free;
end;

procedure TForm1.OpenClient;
 var
  recpos:integer;
 begin
   Form5:=TForm5.Create(Form1);
  recpos:=DataSource1.DataSet.RecNo;
  try
   Form5.id:=id;
   Form5.act:=act;
   Form5.ShowModal;
 finally
 end;
 Form5.Free;
  DataSource1.DataSet.Close;
  DataSource1.DataSet.Open;
  DataSource1.DataSet.RecNo:=recpos;
 end;

procedure TForm1.AddVakans;
begin
 Form6:=TForm6.Create(Form1);
 Form6.act:=act;
 Form6.id_client:=id_client;
 Form6.id_vakans:=id_vakans;
 try
  Form6.ShowModal;
 finally
 end;
 Form6.Free;
end;

Procedure TForm1.AddVip(var index:TStringList; var name:TStringList);
var
 ds:TDataSet;s:string;
begin
 Form9.Show;
 ds:=DataSource1.DataSet;
 with ds do begin
  Open;
  First;

  while not Eof do begin
  s:=FieldByName('name').AsString+' '+FieldByName('spec').AsString;
    if Form9.CheckListBox1.Items.IndexOf(s)=-1 then
    begin
      Form9.Index.Add(FieldByName('id').asString);
      Form9.CheckListBox1.Items.Add(s);
    end;
   Next;
  end;//while

 end;//with
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
 i:integer;
begin
if not((Node.Level=0)and(Node.Index=0)) then
 Label1.Caption:='Level='+IntToStr(Node.Level)+'  index='+IntToStr(Node.Index)+' name='+node.Parent.Text;
 case Node.Level of
  0: Panel1.Visible:=false;
  1: case Node.Index of
      0:begin //кандидаты
            tip:=1;
         Panel1.Align:=alClient;
         Panel1.Visible:=true;
         GroupBox1.Visible:=false;
        CheckBox2.Caption:='Фамилия Имя Отчество';
        DBGrid1.PopupMenu:=PopupMenu1;

         Panel1.Visible:=true;
         Panel2.Visible:=false;
         ADOTable1.Active:=false;
         AdoTable1.TableName:='resume_all';
         ADOTable1.Active:=true;
         DataSource1.DataSet:=ADOTable1;
         Label4.Caption:='Найдено '+IntToStr(ADOTable1.RecordCount)+' записей';
          ComboBox1.Items.Clear;
         ComboBox1.Items.AddStrings(razdel);
          ComboBox2.Items.Clear;
         ComboBox2.Items.AddStrings(opit);
          ComboBox3.Items.Clear;
         ComboBox3.Items.AddStrings(obraz);
           ComboBox4.Items.Clear;
         ComboBox4.Items.AddStrings(pol);
         with DBGrid1 do begin
           Columns.Clear;
//  add('select Daterec, id, name, vozr, spec, tel, id_q'+Field+' from '+AdoTable1.TableName);
           for i:=1 to 7 do Columns.Add;
            Columns[0].FieldName:='Daterec';
             Columns[0].Title.Caption:='Дата записи';
            Columns[1].FieldName:='num';
             Columns[1].Title.Caption:='Номер';
             Columns[1].Width:=40;
            Columns[2].FieldName:='name';
             Columns[2].Title.Caption:='ФИО';
            Columns[3].FieldName:='vozr';
             Columns[3].Title.Caption:='Возраст';
            Columns[4].FieldName:='spec';
             Columns[4].Title.Caption:='Специальность';
            Columns[5].FieldName:='tel';
             Columns[5].Title.Caption:='Телефон';
            Columns[6].FieldName:='id_q';
             Columns[6].Title.Caption:='Статус';
         end;//with
       Edit3.Visible:=true;
       Edit4.Visible:=true;
       CheckBox9.Enabled:=true;
       Edit8.Enabled:=true;
       Edit9.Enabled:=true;
   with ComboBox5.Items do begin
       Clear;
       add('Номер в БД');
       add('Возрасту');
       add('Статусу');
       add('Дате занесения в БД');
       add('Специальности');
   end;//with

         end;
      1:begin //вакансии
       Panel1.Align:=alClient;
       Panel1.Visible:=true;
       GroupBox1.Visible:=false;
       CheckBox2.Caption:='Организация (клиент)';
       Edit3.Visible:=false;
       Edit4.Visible:=false;
          ComboBox1.Items.Clear;
         ComboBox1.Items.AddStrings(razdel);
          ComboBox2.Items.Clear;
         ComboBox2.Items.AddStrings(opit);
          ComboBox3.Items.Clear;
         ComboBox3.Items.AddStrings(obraz);
           ComboBox4.Items.Clear;
         ComboBox4.Items.AddStrings(pol);


         DBGrid1.PopupMenu:=PopupMenu4;
         tip:=2;
         Panel1.Visible:=true;
         Panel2.Visible:=false;
          CheckBox9.Enabled:=false;
          Edit8.Enabled:=false;
          Edit9.Enabled:=false;


         ADOTable1.Active:=false;
         AdoTable1.TableName:='vakans_open';
         ADOTable1.Active:=true;
         DataSource1.DataSet:=ADOTable1;
         Label4.Caption:='Найдено '+IntToStr(ADOTable1.RecordCount)+' записей';
          with ComboBox5.Items do begin
           Clear;
           add('Номер в БД');
         //  add('Возрасту');
         //  add('Статусу');
           add('Дате занесения в БД');
          end;//with
            checkBox9.Checked:=false;
      end;
      2:begin //клиенты
         tip:=2;

             Panel2.Align:=alClient;
             Panel2.Visible:=true;
             Panel1.Visible:=false;
             GroupBox1.Visible:=false;
             LabeledEdit1.EditLabel.Caption:='Название организации (клиента) ';
             LabeledEdit1.Left:=200;

             with ADOQuery4 do begin
              Close;
              SQl.Clear;
              SQL.Add('select name, adres, tel, id');
              SQL.Add('FROM client');
              Open;
             end;//with
              DBGrid2.Columns.Clear;
              for i:=1 to 3 do DBGrid2.Columns.Add;
               with DBGrid2 do begin
                Columns[0].FieldName:='name';
                 Columns[0].Title.Caption:='Название организации';
                 Columns[0].Width:=25*8;
                Columns[1].FieldName:='adres';
                 Columns[1].Title.Caption:='Адрес';
                 Columns[1].Width:=35*8;
                Columns[2].FieldName:='tel';
                 Columns[2].Title.Caption:='Телефон';
               end;//with
              DBGrid2.PopupMenu:=PopupMenu3;
        //      DBGrid3.PopupMenu:=PopupMenu4;
              DataSource1.DataSet:=ADOQuery4;
              DataSource2.DataSet.Close;
      end;
     end;
  2: begin
      if (Node.Parent.Level=1)and(Node.Parent.Index=0) then begin
        Panel1.Visible:=false;
        case Node.Index of
         0:begin //в работе
             tip:=11;

             Panel2.Align:=alClient;
             Panel2.Visible:=true;
             GroupBox1.Visible:=false;
             LabeledEdit1.EditLabel.Caption:='Вакансия';
             LabeledEdit1.Left:=64;

             with ADOQuery4 do begin
              Close;
              SQl.Clear;
              SQL.Add('SELECT distinct vakans_all.DateRec, vakans_all.name, vakans_all.spec, work_rab.id_vakans, vakans_all.id_client');
              SQL.Add('FROM vakans_all RIGHT JOIN work_rab ON vakans_all.id = work_rab.id_vakans');
              SQL.Add('WHERE (not vakans_all.ClosedVakans)');
              Open;
             end;//with
                DataSource1.DataSet:=ADOQuery4;
                DBGrid2.Columns.Clear;
               for i:=1 to 3 do DBGrid2.Columns.Add;
               with DBGrid2 do begin
                Columns[0].FieldName:='DateRec';
                 Columns[0].Title.Caption:='Дата записи';
                Columns[1].FieldName:='name';
                 Columns[1].Title.Caption:='Клиент';
                Columns[2].FieldName:='spec';
                 Columns[2].Title.Caption:='Специальность';
               end;//with

                DBGrid3.PopupMenu:=PopupMenu2;

           end;
         1:begin
            tip:=12;
           end;
        end//case
     end;//if
     if (Node.Parent.Level=1)and(Node.Parent.Index=1) then begin
        case Node.Index of
         0:begin  //Открытые
            tip:=21; GroupBox1.Caption:='Открытые вакансии';
            GroupBox1.Align:=alClient;
            GroupBox1.Visible:=true;
            Panel1.Visible:=false;
            Panel2.Visible:=false;
           with Form1.ADOQuery1 do begin
            Close;
             SQL.Clear;
             SQL.ADd('SELECT vakans.num, client.name, vakans.spec, vakans.id, vakans.id_client');
             SQL.Add('FROM client LEFT JOIN vakans ON client.id = vakans.id_client');
             SQL.Add('WHERE not vakans.ClosedVakans');
            Open;
           end;//with
           with DBGrid4 do begin
            Columns.Clear;
            for i:=1 to 3 do Columns.Add;
                Columns[0].FieldName:='num';
                 Columns[0].Title.Caption:='№';
                 Columns[0].Width:=40;
                Columns[1].FieldName:='name';
                 Columns[1].Title.Caption:='Название организации';
                Columns[2].FieldName:='spec';
                 Columns[2].Title.Caption:='Специальность';
            end;//with
           DataSource1.DataSet:=Form1.ADOQuery1;
           Label5.Caption:='Всего '+IntToStr(Form1.ADOQuery1.RecordCount);
           end;
         1:begin //Закрытые
            tip:=22; GroupBox1.Caption:='Закрытые вакансии';
            GroupBox1.Align:=alClient;
            GroupBox1.Visible:=true;
            Panel1.Visible:=false;
            Panel2.Visible:=false;
             with Form1.ADOQuery1 do begin
            Close;
             SQL.Clear;
             SQL.Add('SELECT vakans.DateOpen, vakans.DateClose, client.name, vakans.spec, vakans.id, vakans.id_client');
             SQL.Add('FROM client LEFT JOIN vakans ON client.id = vakans.id_client');
             SQL.Add('WHERE vakans.ClosedVakans');
            Open;
           end;//with
              with DBGrid4 do begin
            Columns.Clear;
            for i:=1 to 4 do Columns.Add;
                Columns[0].FieldName:='DateOpen';
                 Columns[0].Title.Caption:='Дата открытия';
                 Columns[0].Width:=40;
                Columns[1].FieldName:='DateClose';
                 Columns[1].Title.Caption:='Дата закрытия';
                Columns[2].FieldName:='name';
                 Columns[2].Title.Caption:='Наименование организации';
                Columns[3].FieldName:='spec';
                 Columns[3].Title.Caption:='Специальность';
            end;//with
           DataSource1.DataSet:=Form1.ADOQuery1;
           Label5.Caption:='Всего '+IntToStr(Form1.ADOQuery1.RecordCount);
          end;
        end;//case
     end;//if

    end;
 end;


end;

procedure TForm1.Button1Click(Sender: TObject);
var
 usl:string;
 sort,num,plata,comment,op_rab,op_ych:string;
 znak,vozr,pol,obraz,opit,razdel,field,order,spec,FIO,Dates,s1,s2:string;
 i:integer;
// sort_spec,sort_FIO,sort_Dates:string;
begin
//if tip=1 then begin
s1:=DateToMSAccess(DateTimePicker1.DateTime);
s2:=DateToMSAccess(IncDay(DateTimePicker2.DateTime));

case tip of
 1:begin
    Field:=',tel, id, vozr, id_q';
    razdel:='(razdel=';
    opit:='(opit in '; znak:='>=';
    obraz:='(obraz in';
    pol:='(pol =';
   end;
 2:begin
    Field:=', id_client, id';
    razdel:='(razdel_id=';
    opit:='(opit_id in'; znak:='>=';
    obraz:='(obraz_id in';
    pol:='(pol_id =';
   end;
end;//case


if not (CheckBox1.Checked or
        CheckBox2.Checked or
        CheckBox3.Checked) then begin
 DataSource1.DataSet:=ADOTable1; order:='order by';
 //ShowMessage('Для поиска выделите галочкой те сведенья, по которым будет производится поиск в базе данных.');
end
else
 order:='order by ';
begin
if CheckBox1.Checked then Dates:='(((DateRec)>='+s1+')and((DateRec)<='+s2+'))'
else Dates:='(true)';
if (CheckBox2.Checked)and(Edit1.Text<>'') then FIO:='((name LIKE "%'+Edit1.Text+'%"))'
else FIO:='(true)';
if CheckBox3.Checked then  spec:='((spec LIKE "%'+Edit2.Text+'%"))'
else Spec:='(true)';
if CheckBox4.Checked and(not(ComboBox1.ItemIndex=0)) then  razdel:=razdel+'(select id from razdel1 where name="'+ComboBox1.text+'"))'
else razdel:='(true)';
//if CheckBox5.Checked then  opit:=opit+'(select id from opit1 where name="'+ComboBox2.text+'"))'
//else opit:='(true)';

if CheckBox5.Checked then  opit:=opit+'(select id from opit1 where (year)'+znak+'(select year from opit1 where name="'+ComboBox2.text+'")))'
else opit:='(true)';

//if CheckBox6.Checked then  obraz:=obraz+'(select id from obraz1 where name="'+ComboBox3.text+'"))'
//else obraz:='(true)';

if CheckBox6.Checked then  obraz:=obraz+'(select id from obraz1 where (prioritet)>=(select prioritet from obraz1 where name="'+ComboBox3.text+'")))'
else obraz:='(true)';


if (CheckBox10.Checked)and(not(ComboBox4.ItemIndex=0)) then  pol:=pol+'(select id from pol1 where name="'+ComboBox4.text+'"))'
else pol:='(true)';
if CheckBox11.Checked then  num:='(num="'+Edit10.text+'")'
else num:='(true)';
if CheckBox8.Checked then
 if (Edit6.Text='')and(Edit7.Text='') then plata:='(true)' else
        if Edit6.Text='' then plata:='((plata<='+Edit7.Text+'))'
   else if Edit7.Text='' then plata:='((plata>='+Edit6.Text+'))'
   else plata:='((plata>='+Edit6.Text+')and(plata<='+Edit7.Text+'))'
else plata:='(true)';

if CheckBox9.Checked then
 if (Edit8.Text='')and(Edit9.Text='') then vozr:='(true)' else
        if Edit8.Text='' then vozr:='((vozr<='+Edit9.Text+'))'
   else if Edit9.Text='' then vozr:='((vozr>='+Edit8.Text+'))'
   else vozr:='((vozr>='+Edit8.Text+')and(vozr<='+Edit9.Text+'))'
else vozr:='(true)';



if not(Edit3.Text='') then op_rab:='((op_rab LIKE "%'+ Edit3.Text+'%"))'
else op_rab:='(true)';
if not(Edit4.Text='') then op_ych:='((op_ych LIKE "%'+ Edit4.Text+'%"))'
else op_ych:='(true)';
if not(Edit5.Text='') then comment:='((comment LIKE "%'+ Edit5.Text+'%"))'
else comment:='(true)';

if tip=1 then
  case Combobox5.ItemIndex of
   0:sort:='order by num';
   1:sort:='order by vozr, name';
   2:sort:='order by id_q, name';
   3:sort:='order by DateRec, name';
   4:sort:='order by spec, name';
  end//case}
else if tip=2 then
  case Combobox5.ItemIndex of
   0:sort:='order by num';
   1:sort:='order by DateRec';
  end;//case}

// and(true)

  usl:='WHERE '+Dates+'and'+FIO+'and'+spec+'and'+razdel+'and'+opit+'and'+obraz+'and'+pol+'and'+op_rab+'and'+op_ych+'and'+comment+'and'+plata+'and'+vozr+'and'+num;

 i:=pos('and(true)',usl);
 while i<>0 do begin
  usl:=copy(usl,1,i-1)+copy(usl,i+9,length(usl)-i-8);
  i:=pos('and(true)',usl);
 end;//while

 ADOQuery1.Close;
 with ADOQuery1.SQL do begin
   Clear;
   add('select Daterec, id, name,  spec, num'+Field+' from '+AdoTable1.TableName);
   add(usl);
   add(sort);
 end;//with

 Memo1.Lines.Assign(ADOQuery1.SQL);
 Memo1.Lines.Add(s1);
 ADOQuery1.Open;
  Label4.Caption:='Найдено '+IntToStr(ADOQuery1.RecordCount)+' записей';
 DataSource1.DataSet:=ADOQuery1;
end; //else

//end;//if tip=1

end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
 case tip of
 1: OpenKandidat(Form1.DataSource1.DataSet.FieldByname('id').AsInteger, act_update);
 2: AddVakans(Form1.DataSource1.DataSet.FieldByname('id_client').AsInteger,Form1.DataSource1.DataSet.FieldByname('id').AsInteger, act_update);
 // OpenClient(Form1.DataSource1.DataSet.FieldByname('id_client').AsInteger,act_update);
end;//case
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin

 ADOTable1.Active:=true;

 brak:=TStringList.Create;

 brak.Add('Женат');
 brak.Add('Холост');
 brak.Add('Замужем');
 brak.Add('Не замужем');

 AdoTableSprav:=TADOTable.Create(Form1);
 AdoTableSprav.Connection:=ADOConnection1;

 AdoTableSprav.TableName:='razdel1';
 AdoTableSprav.Open;
 razdel:=TStringList.Create;
 ADOTableSprav.First;
 repeat
  razdel.Add(ADOTableSprav.FieldByName('name').AsString);
  ADOTableSprav.Next;
 until ADOTableSprav.Eof;
  AdoTableSprav.Close;

 AdoTableSprav.TableName:='pol1';
 AdoTableSprav.Open;
 pol:=TStringList.Create;
 ADOTableSprav.First;
 repeat
  pol.Add(ADOTableSprav.FieldByName('name').AsString);
  ADOTableSprav.Next;
 until ADOTableSprav.Eof;
  AdoTableSprav.Close;

 AdoTableSprav.TableName:='obraz1';
 AdoTableSprav.Open;
 obraz:=TStringList.Create;
 ADOTableSprav.First;
 repeat
  obraz.Add(ADOTableSprav.FieldByName('name').AsString);
  ADOTableSprav.Next;
 until ADOTableSprav.Eof;
  AdoTableSprav.Close;

 AdoTableSprav.TableName:='opit1';
 AdoTableSprav.Open;
 opit:=TStringList.Create;
 ADOTableSprav.First;
 repeat
  opit.Add(ADOTableSprav.FieldByName('name').AsString);
  ADOTableSprav.Next;
 until ADOTableSprav.Eof;
  AdoTableSprav.Close;

  ADOTableSprav.Free;

  Status:=TStringList.Create;
  for i:=1 to 4 do
   Status.Add(IntToStr(i));




end;

procedure TForm1.N23Click(Sender: TObject);
begin
 FindVakans(Form1.DataSource1.DataSet.FieldByName('id').AsInteger);
end;

procedure TForm1.N24Click(Sender: TObject);
begin
 Form2:=TForm2.Create(Form1);
 try
 Form2.act:=act_insert;
 form2.Button3.Enabled:=false;
//  Form2.id:= Form1.DataSource1.DataSet.FieldByName('id').AsString;
//  with ADOQuery2 do begin
//   Close;
//    sql.Clear;
//    sql.Add('select * from resume where id='+Form2.id);
//   Open;
//  end;//with
  Form2.ShowModal;
 finally
  Form2.Close;
 end;
 Form2.Free;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
 case tip of
  11: OpenKandidat(Form1.ADOQuery7.FieldByName('id').AsInteger, act_update);
  2: AddVakans(Form1.DataSource2.DataSet.FieldByname('id_client').AsInteger,Form1.DataSource2.DataSet.FieldByname('id').AsInteger, act_update);
 end;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
 FindVakans(Form1.ADOQuery7.FieldByName('id').AsInteger);
 if AdoQuery7.Active=true then begin
   AdoQuery7.Close;
   AdoQuery7.Open;
 end;
   Form1.DataSource1.DataSet.RecNo:=RecNumber;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.DataSource1.DataSet.Close;
  Form1.DataSource1.DataSet.Open;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
 OpenClient(-1,act_insert);
end;

procedure TForm1.N29Click(Sender: TObject);
begin
  OpenClient(28,act_insert);
end;

procedure TForm1.N30Click(Sender: TObject);
begin
   OpenClient(ADOQuery4.FieldByName('id').AsInteger,act_update);
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
 case tip of
  11:begin
      RecNumber:=Form1.DataSource1.DataSet.RecNo;
      OpenClient(ADOQuery4.FieldByName('id_client').AsInteger,act_update);
      Form1.DataSource1.DataSet.RecNo:=RecNumber;
     end;
  2:begin
      RecNumber:=Form1.DataSource1.DataSet.RecNo;
      OpenClient(ADOQuery4.FieldByName('id').AsInteger,act_update);
      Form1.DataSource1.DataSet.RecNo:=RecNumber;
     end;
 end;//case
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 razdel.Clear;
 razdel.Free;
 Pol.Clear;
 pol.Free;
 obraz.Clear;
 obraz.Free;
 opit.Clear;
 opit.Free;
 status.Clear;
 status.Free;
 brak.Clear;
 brak.Free;
 Form9.Index.Clear;
 Form9.Index.Free;
end;


procedure TForm1.DBGrid2CellClick(Column: TColumn);
var
 i:integer;
begin
if tip=11 then begin
  RecNumber:=Form1.DataSource1.DataSet.RecNo;
 with ADOQuery7 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT resume.id, resume.num, resume.name, resume.spec, resume.tel, work_rab.id_vakans');
  SQL.Add('FROM resume RIGHT JOIN work_rab ON resume.id = work_rab.id_resume');
  SQL.Add('where work_rab.id_vakans='+IntToStr(Form1.DataSource1.DataSet.FieldByName('id_vakans').AsInteger));
  Open;
 end;//with
    DBGrid3.Columns.Clear;
    for i:=1 to 5 do DBGrid3.Columns.Add;
      with DBGrid3 do begin
       Columns[0].FieldName:='num';
       Columns[0].Title.Caption:='Номер анкеты';
       Columns[0].Width:=80;
       Columns[1].FieldName:='name';
       Columns[1].Title.Caption:='ФИО соискателя';
       Columns[1].Width:=180;
       Columns[2].FieldName:='spec';
       Columns[2].Title.Caption:='Специальность';
       Columns[2].Width:=120;
       Columns[3].FieldName:='tel';
       Columns[3].Title.Caption:='Телефон';
       Columns[3].Width:=100;
//       Columns[4].FieldName:='tel';
       Columns[4].Title.Caption:='Результат';

      end;//with

 end;//if tip=11

if tip=2 then begin
    with Form1.ADOQuery7 do begin
    Close;
     SQL.Clear;
     SQL.Text:='select * from vakans where (not closedVakans) and (id_client='+Form1.DataSource1.DataSet.FieldByName('id').AsString+')';
    Open;
   end;//with

end;//tip=2



end;

procedure TForm1.N19Click(Sender: TObject);
begin
if MessageBox(Form1.Handle,'Удалить резюме данного кандидата?','Удаление резюме кандидата',mb_yesno)=6 then begin
 ADOQuerydel:=TADOQuery.Create(Form1);
 ADOQuerydel.Connection:=ADOConnection1;
 with ADOQuerydel do begin
  close;
  SQL.Clear;
  Sql.Add('delete from work_rab where id_resume='+DataSource1.DataSet.fieldByName('id').AsString);
  ExecSQL;
   Close;
 end;//with
  ADOQuerydel.Free;
 with DataSource1.DataSet do begin
  Open;
  Delete;
 end;//with

end;//if

end;

procedure TForm1.N7Click(Sender: TObject);
begin
 ADOConnection1.Close;
 Form1.Close;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
 CheckBox4.Checked:=true;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 CheckBox3.Checked:=true;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
 CheckBox5.Checked:=true;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
 if not(ComboBox3.Text='') then CheckBox6.Checked:=true;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
if not(Edit5.Text='') then CheckBox7.Checked:=true else
CheckBox7.Checked:=false;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
 Edit6.Text:=filterStr(Edit6.Text);
 Edit7.Text:=filterStr(Edit7.Text);

if (Edit6.Text='')and(Edit7.Text='') then  CheckBox8.Checked:=false
else CheckBox8.Checked:=true;

end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
 Edit10.Text:=filterStr(Edit10.Text);
 if Edit10.text='' then CheckBox11.Checked:=false
 else CheckBox11.Checked:=true;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
 CheckBox10.Checked:=true;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
 Edit8.Text:=filterStr(Edit8.Text);
 Edit9.Text:=filterStr(Edit9.Text);

  if (Edit8.Text='')and(Edit9.Text='') then  CheckBox9.Checked:=false
else CheckBox9.Checked:=true;
end;

procedure TForm1.N33Click(Sender: TObject);
begin
 AddVakans(Form1.DataSource1.DataSet.FieldByname('id_client').AsInteger,Form1.DataSource1.DataSet.FieldByname('id').AsInteger, act_update);
 
end;

procedure TForm1.N32Click(Sender: TObject);
begin
 OpenClient(Form1.DataSource1.DataSet.FieldByname('id_client').AsInteger,act_update);
end;

procedure TForm1.N34Click(Sender: TObject);
begin
 OpenClient(-1,act_insert);
end;

procedure TForm1.N35Click(Sender: TObject);
begin
 if MessageBox(Form1.Handle,'Удалить информацию о клиенте и о всех вакансиях этого клиента?','Удаление клиента',mb_yesno)=6 then begin
  ADOQuerydel:=TADOQuery.Create(Form1);
  ADOQuerydel.Connection:=ADOConnection1;
 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from vakans where id_client='+DataSource1.DataSet.fieldByName('id_client').AsString);
  ExecSQL;
 end;//with
 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from client where id='+DataSource1.DataSet.fieldByName('id_client').AsString);
  ExecSQL;
 end;//with
 ADOQuerydel.Free;
 
  DataSource1.DataSet.Close;
  DataSource1.DataSet.Open;
 end;//if

end;

procedure TForm1.N31Click(Sender: TObject);
begin
  if MessageBox(Form1.Handle,'Удалить информацию о клиенте и о всех вакансиях этого клиента?','Удаление клиента',mb_yesno)=6 then begin
  ADOQuerydel:=TADOQuery.Create(Form1);
  ADOQuerydel.Connection:=ADOConnection1;

 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from work_rab where id_vakans in (select id from vakans where id_client='+DataSource1.DataSet.fieldByName('id').AsString+')');
  ExecSQL;
 end;//with
 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from vakans where id_client='+DataSource1.DataSet.fieldByName('id').AsString);
  ExecSQL;
 end;//with
 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from ContactMen where id_client='+DataSource1.DataSet.fieldByName('id').AsString);
  ExecSQL;
 end;//with
 with ADOQuerydel do begin
  Close;
  SQL.Clear;
  SQL.Add('delete from client where id='+DataSource1.DataSet.fieldByName('id').AsString);
  ExecSQL;
 end;//with

  ADOQuerydel.Free;

  DataSource1.DataSet.Close;
  DataSource1.DataSet.Open;
 end;//if
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 if tip=11 then begin
  QuickReport7:=TQuickReport7.Create(Form1);
  QuickReport7.QRLabel1.Caption:=QuickReport7.QRLabel1.Caption+Form1.DataSource1.DataSet.FieldByName('name').AsString+' '+
   Form1.DataSource1.DataSet.FieldByName('spec').AsString;
  QuickReport7.Preview;
  QuickReport7.Free;
 end;
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 ds:TDataSet;
 s:string;
begin
if (tip=1) then
 if MessageBox(Form1.Handle,'Добавить всех найденных кандидтов к избранным?','Добавление к избранным',mb_yesno)=6 then begin
 Form9.Show;
 ds:=DataSource1.DataSet;
 with ds do begin
  Open;
  First;

  while not Eof do begin
  s:=FieldByName('name').AsString+' '+FieldByName('spec').AsString;
    if Form9.CheckListBox1.Items.IndexOf(s)=-1 then
    begin
      Form9.Index.Add(FieldByName('id').asString);
      Form9.CheckListBox1.Items.Add(s);
    end;
   Next;
  end;//while

 end;//with
// Label2.Caption:='Всего '+IntToStr(Form9.CheckListBox1.Items.Count)+' записей';
end;//if messagebox


end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Form9.Show;
end;

procedure TForm1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=chr(13) then
  case tip of
   1: OpenKandidat(Form1.DataSource1.DataSet.FieldByname('id').AsInteger, act_update);
   2: AddVakans(Form1.DataSource1.DataSet.FieldByname('id_client').AsInteger,Form1.DataSource1.DataSet.FieldByname('id').AsInteger, act_update);
  end;//case
end;

procedure TForm1.N38Click(Sender: TObject);
var
 s:string;
begin
 with DataSource1.DataSet do begin
   s:=DataSource1.DataSet.FieldByName('name').asString+' '+DataSource1.DataSet.FieldByName('spec').asString;
   Form9.Show;
  if (Form9.CheckListBox1.Items.IndexOf(s)=-1)and(Form9.Index.IndexOf(FieldByName('id').asString)=-1) then
    begin
      Form9.Index.Add(FieldByName('id').asString);
      Form9.CheckListBox1.Items.Add(s);
    end;
 end;//with

end;

procedure TForm1.Button7Click(Sender: TObject);
var
 ds:TDataSet;
begin
QuickReport11:=TQuickReport11.Create(Form1);
 ds:=Form1.DataSource1.DataSet;
if tip=1 then
 with QuickReport11 do begin
  QRDBText1.DataSet:=ds;
  QRDBText2.DataSet:=ds;
  QRDBText3.DataSet:=ds;
  QRDBText4.DataSet:=ds;
  QRDBText5.DataSet:=ds;
  QRDBText6.DataSet:=ds;
  QRDBText7.DataSet:=ds;
  QuickReport11.DataSet:=Form1.DataSource1.DataSet;
  QuickReport11.Preview;
 end;//with
QuickReport11.Free;

end;

procedure TForm1.N39Click(Sender: TObject);
var
 ds:TdataSet;
begin
if tip=11 then begin
  ADOQueryDel:=TADOQuery.Create(Form1);
  ADOQueryDel.Connection:=ADOConnection1;
 with ADOQueryDel do begin
  ds:=Form1.DataSource2.DataSet;
  Close;
   SQL.Clear;
   SQL.Add('delete from work_rab');
   SQL.Add('where (id_resume='+IntToStr(ADOQuery7.FieldbyName('id').AsInteger)+')and(id_vakans='+IntToStr(ADOQuery7.FieldbyName('id_vakans').AsInteger)+')');
  ExecSQL;
  ds.Close;
  ds.Open;
 end;//with
 ADOQueryDel.Free;
end;//if

end;

procedure TForm1.N2Click(Sender: TObject);
begin
 Form12:=TForm12.Create(Form1);
 try
  Form12.ShowModal;
 finally
  Form12.Close;
 end;
 Form12.Free;
end;

procedure TForm1.DBGrid2KeyPress(Sender: TObject; var Key: Char);
var
 i:integer;
begin
 if tip=11 then begin
  RecNumber:=Form1.DataSource1.DataSet.RecNo;
 with ADOQuery7 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT resume.id, resume.num, resume.name, resume.spec, resume.tel, work_rab.id_vakans');
  SQL.Add('FROM resume RIGHT JOIN work_rab ON resume.id = work_rab.id_resume');
  SQL.Add('where work_rab.id_vakans='+IntToStr(Form1.DataSource1.DataSet.FieldByName('id_vakans').AsInteger));
  Open;
 end;//with
    DBGrid3.Columns.Clear;
    for i:=1 to 5 do DBGrid3.Columns.Add;
      with DBGrid3 do begin
       Columns[0].FieldName:='num';
       Columns[0].Title.Caption:='Номер анкеты';
       Columns[0].Width:=80;
       Columns[1].FieldName:='name';
       Columns[1].Title.Caption:='ФИО соискателя';
       Columns[1].Width:=180;
       Columns[2].FieldName:='spec';
       Columns[2].Title.Caption:='Специальность';
       Columns[2].Width:=120;
       Columns[3].FieldName:='tel';
       Columns[3].Title.Caption:='Телефон';
       Columns[3].Width:=100;
//       Columns[4].FieldName:='tel';
       Columns[4].Title.Caption:='Результат';

      end;//with

 end;//if tip=11
if tip=23 then begin
    with Form1.ADOQuery7 do begin
    Close;
     SQL.Clear;
     SQL.Text:='select * from vakans where id_client='+Form1.DataSource1.DataSet.FieldByName('id').AsString;
    Open;
   end;//with

end;//tip=23
if tip=2 then begin
    with Form1.ADOQuery7 do begin
    Close;
     SQL.Clear;
     SQL.Text:='select * from vakans where id_client='+Form1.DataSource1.DataSet.FieldByName('id').AsString;
    Open;
   end;//with

end;//tip=2

end;

procedure TForm1.DBGrid4DblClick(Sender: TObject);
var
 numrec:integer;
begin
 numrec:=ADOQuery1.RecNo;
 AddVakans(ADOQuery1.FieldByName('id_client').AsInteger,ADOQuery1.FieldByName('id').AsInteger,act_update);
 ADOQuery1.Close;
 ADOQuery1.Open;
 ADOQuery1.RecNo:=numrec;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 OpenClient(-1,act_insert);
end;

procedure TForm1.Button8Click(Sender: TObject);
var
 usl,vak:string;
begin
 case tip of
  11: BEGIN
    if not(LabeledEdit1.Text='') then vak:='((vakans_all.name LIKE "%'+LabeledEdit1.Text+'%")or(vakans_all.spec LIKE "%'+LabeledEdit1.Text+'%"))'
    else vak:='(true)';
   usl:='WHERE (not vakans_all.ClosedVakans)and'+vak;
  with ADOQuery4 do begin
   Close;
    SQl.Clear;
    SQL.Add('SELECT distinct vakans_all.DateRec, vakans_all.name, vakans_all.spec, work_rab.id_vakans, vakans_all.id_client');
    SQL.Add('FROM vakans_all RIGHT JOIN work_rab ON vakans_all.id = work_rab.id_vakans');
    SQL.Add(usl);
   Open;
  end;//with
   DataSource1.DataSet:=ADOQuery4;
      END;//tip=11
   2: BEGIN
       if not(LabeledEdit1.Text='') then vak:='(client.name LIKE "%'+LabeledEdit1.Text+'%")'
    else vak:='(true)';
   usl:='WHERE '+vak;
    with ADOQuery4 do begin
     Close;
      SQl.Clear;
       SQL.Add('select name, adres, tel, id');
       SQL.Add('FROM client');
       SQL.Add(usl);
      Open;
    end;//with
     DataSource1.DataSet:=ADOQuery4;
      END;//tip=2
  end;//case
end;

procedure TForm1.N41Click(Sender: TObject);
var
  f : textfile;
  i,t,k : integer;
  s: string;
begin

 ADOQuery_inet:=TADOQuery.Create(Form1);
 with ADOQuery_inet do begin
   Connection:=ADOConnection1;
   Close;
    SQL.Clear;
    SQL.Add('SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name');
    SQL.Add('FROM resume, opit1, razdel1, obraz1, pol1');
    SQL.Add('WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))');
    SQL.Add('order by resume.razdel');

   Open;
 end;//with


{SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name
FROM resume, opit1, razdel1, obraz1, pol1
WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))}

// ADOQuery_inet.Active:=true;
   assignfile(f,'webbaza\resume.ddr');rewrite(f);
  t:=0;
  ADOQuery_inet.First;
  for i:=1 to ADOQuery_inet.RecordCount do begin
   k:=ADOQuery_inet['razdel'];
   if (t=0) or (k<>t) then begin
     s:='@'+ADOQuery_inet['razdel1.name'];
       writeln(f,S); T:=K;end;
     S:='№'+ADOQuery_inet.fieldbyname('num').asstring;
     S:=S+'&'+ADOQuery_inet['spec']+', пол '+ADOQuery_inet['pol1.name']+', возраст '+ADOQuery_inet.fieldbyname('vozr').asstring+', опыт работы '+ADOQuery_inet['opit1.name'];
     S:=S+', образование '+ADOQuery_inet['obraz1.name']+', оплата '+ADOQuery_inet.fieldbyname('plata').asstring+'руб ';

     S:=S+', дополнительно '+DDD(ADOQuery_inet['comment']);
                           writeln(f,S);
     ADOQuery_inet.next;
  end;
  closefile(f);
 ADOQuery_inet.Close;
 ADOQuery_inet.SQL.Clear;
 ADOQuery_inet.Free;

 application.MessageBox('База записана. Скопируйте ее на FTP Server.','Информация',MB_OK);

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 if Edit1.text='' then CheckBox2.Checked:=false else CheckBox2.Checked:=true;
end;

procedure TForm1.N42Click(Sender: TObject);
var
 f : textfile;
  i,t,k : integer;
  s: string;
begin
   ADOQuery_inet:=TADOQuery.Create(Form1);
 with ADOQuery_inet do begin
   Connection:=ADOConnection1;
   Close;
    SQL.Clear;
     SQL.Add('select a.razdel, b.name, num, spec, c.name, d.name, e.name, plata, comment from vakans a,razdel1 b,pol1 c,opit1 d,obraz1 e');
     SQL.Add('where a.razdel=b.id  and a.pol= c.id and a.opit=d.id and a.obraz=e.id and (a.razdel<>1)');
     SQL.Add('order by a.razdel');
{    SQL.Add('SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name');
    SQL.Add('FROM resume, opit1, razdel1, obraz1, pol1');
    SQL.Add('WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))');
    SQL.Add('order by resume.razdel');}

   Open;
 end;//with

  assignfile(f,'webbaza\vakans.ddr');rewrite(f);
    t:=0;
  for i:=1 to ADOQuery_inet.RecordCount do begin
   k:=ADOQuery_inet['razdel'];
   if (t=0) or (k<>t) then begin
     s:='@'+ADOQuery_inet['b.name'];
       writeln(f,S); T:=K;end;
     S:='№'+ADOQuery_inet.fieldbyname('num').asstring;
     S:=S+'&'+ADOQuery_inet['spec']+', пол '+ADOQuery_inet['c.name']+', опыт работы '+ADOQuery_inet['d.name'];
     S:=S+', образование '+ADOQuery_inet['e.name']+', оплата '+ADOQuery_inet.fieldbyname('plata').asstring+'руб. ';

     S:=S+', дополнительно '+DDD(ADOQuery_inet['comment']);
                           writeln(f,S);
     ADOQuery_inet.next;
  end;
  closefile(f);
  ADOQuery_inet.Close;
  ADOQuery_inet.SQL.Clear;
  ADOQuery_inet.Free;

 application.MessageBox('База записана. Скопируйте ее на FTP Server.','Информация',MB_OK);

end;

procedure TForm1.N43Click(Sender: TObject);
var
 f:textfile;i,t,k:integer;
 s:string;
begin
  ADOQuery_inet:=TADOQuery.Create(Form1);
 with ADOQuery_inet do begin
   Connection:=ADOConnection1;
   Close;
    SQL.Clear;
    SQL.Add('SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name');
    SQL.Add('FROM resume, opit1, razdel1, obraz1, pol1');
    SQL.Add('WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))');
    SQL.Add('order by resume.razdel');

   Open;
 end;//with


{SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name
FROM resume, opit1, razdel1, obraz1, pol1
WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))}

// ADOQuery_inet.Active:=true;
   assignfile(f,'webbaza\resume.ddr');rewrite(f);
  t:=0;
  ADOQuery_inet.First;
  for i:=1 to ADOQuery_inet.RecordCount do begin
   k:=ADOQuery_inet['razdel'];
   if (t=0) or (k<>t) then begin
     s:='@'+ADOQuery_inet['razdel1.name'];
       writeln(f,S); T:=K;end;
     S:='№'+ADOQuery_inet.fieldbyname('num').asstring;
     S:=S+'&'+ADOQuery_inet['spec']+', пол '+ADOQuery_inet['pol1.name']+', возраст '+ADOQuery_inet.fieldbyname('vozr').asstring+', опыт работы '+ADOQuery_inet['opit1.name'];
     S:=S+', образование '+ADOQuery_inet['obraz1.name']+', оплата '+ADOQuery_inet.fieldbyname('plata').asstring+'руб ';

     S:=S+', дополнительно '+DDD(ADOQuery_inet['comment']);
                           writeln(f,S);
     ADOQuery_inet.next;
  end;
  closefile(f);
 //////////////////////////////// вакансии
 with ADOQuery_inet do begin
    Close;
    SQL.Clear;
     SQL.Add('select a.razdel, b.name, num, spec, c.name, d.name, e.name, plata, comment from vakans a,razdel1 b,pol1 c,opit1 d,obraz1 e');
     SQL.Add('where a.razdel=b.id  and a.pol= c.id and a.opit=d.id and a.obraz=e.id and (a.razdel<>1)');
     SQL.Add('order by a.razdel');
{    SQL.Add('SELECT resume.num, resume.spec, resume.vozr, resume.plata, resume.comment, resume.razdel, razdel1.name, pol1.name, opit1.name, obraz1.name');
    SQL.Add('FROM resume, opit1, razdel1, obraz1, pol1');
    SQL.Add('WHERE (((opit1.id)=([resume].[opit])) AND ((razdel1.id)=[resume].[razdel]) AND ((obraz1.id)=([resume].[obraz])) AND ((pol1.id)=([resume].[pol])))and((id_q="1")or(id_q="2"))');
    SQL.Add('order by resume.razdel');}

   Open;
 end;//with

  assignfile(f,'webbaza\vakans.ddr');rewrite(f);
    t:=0;
  for i:=1 to ADOQuery_inet.RecordCount do begin
   k:=ADOQuery_inet['razdel'];
   if (t=0) or (k<>t) then begin
     s:='@'+ADOQuery_inet['b.name'];
       writeln(f,S); T:=K;end;
     S:='№'+ADOQuery_inet.fieldbyname('num').asstring;
     S:=S+'&'+ADOQuery_inet['spec']+', пол '+ADOQuery_inet['c.name']+', опыт работы '+ADOQuery_inet['d.name'];
     S:=S+', образование '+ADOQuery_inet['e.name']+', оплата '+ADOQuery_inet.fieldbyname('plata').asstring+'руб. ';

     S:=S+', дополнительно '+DDD(ADOQuery_inet['comment']);
                           writeln(f,S);
     ADOQuery_inet.next;
  end;
  closefile(f);

 ADOQuery_inet.Close;
 ADOQuery_inet.SQL.Clear;
 ADOQuery_inet.Free;

 application.MessageBox('База записана. Скопируйте ее на FTP Server.','Информация',MB_OK);

end;

procedure TForm1.N45Click(Sender: TObject);
var
 f:textfile;
 List:TStringList;
 i:integer;
// List1:TMemo;
begin

List:=TStringList.Create;

//List1:=TMemo.Create(Form1);
//List1.ParentWindow:=Form1.Handle;
//List1.Visible:=false;


ADOQuery_inet:=TADOQuery.Create(Form1);
ADOQuery_inet.CursorLocation:=clUseServer;
ADOQuery_inet.CursorType:=ctKeyset;

 with ADOQuery_inet do begin
   Connection:=ADOConnection1;
   Close;
    SQL.Clear;
    SQL.Add('SELECT resume.razdel, resume.spec, resume.vozr, pol1.name AS pol, opit1.name AS opit, obraz1.name AS obraz, resume.op_rab, resume.op_ych, resume.comment, resume.num');
    SQL.Add('FROM pol1, resume, obraz1, opit1');
    SQL.Add('WHERE (((resume.razdel) Not In (6,22,31,33)) AND ((resume.id_q) In ("1","2")) AND ((resume.pol)=[pol1].[id]) AND ((resume.obraz)=[obraz1].[id]) AND ((resume.opit)=[opit1].[id]))');
    SQL.Add('ORDER BY resume.razdel, resume.spec');
   Open;
 end;//with


 assignfile(f,'webbaza\resume1.ddr');rewrite(f);
 while not ADOQuery_inet.Eof do begin
  with ADOQuery_inet do begin
    writeln(f,FieldByName('num').asString);
    writeln(f,FieldByName('razdel').asString);
    writeln(f,FieldByName('spec').asString);
    writeln(f,FieldByName('vozr').asString);
    writeln(f,FieldByName('pol').asString);
    writeln(f,FieldByName('opit').asString);
    writeln(f,FieldByName('obraz').asString);


   List.Clear;
   List.Assign(FieldByName('op_rab'));
   for i:=0 to List.Count-1 do
     write(f,List.Strings[i]+' ');
   writeln(f,'.');

   List.Clear;
   List.Assign(FieldByName('op_ych'));
   for i:=0 to List.Count-1 do
     write(f,List.Strings[i]+' ');
   writeln(f,'.');

   List.Clear;
   List.Assign(FieldByName('comment'));
   for i:=0 to List.Count-1 do
     write(f,List.Strings[i]+' ');
    writeln(f,'.');



//    write(f,'test');     writeln(f,' test');
 //   writeln(f,DDD(FieldByName('op_rab').asString));
 //   writeln(f,DDD(FieldByName('op_ych').asString));
   Next;
  end;//with

 //     ADOQuery_inet.next;
 end;//while

  closefile(f);


 ADOQuery_inet.Close;
 ADOQuery_inet.SQL.Clear;
 ADOQuery_inet.Free;
 List.Free;
// List1.Free;
 application.MessageBox('База записана. Скопируйте ее на FTP Server.','Информация',MB_OK);

{SELECT DISTINCT resume.num, resume.razdel, resume.spec, resume.vozr, pol1.name AS pol, obraz1.name AS obraz, resume.op_rab, resume.op_ych, opit1.name AS opit
FROM pol1, resume, obraz1, opit1
WHERE (((resume.razdel) Not In (6,22,31,33)) AND ((resume.id_q) In ("1","2")) AND ((resume.pol)=[pol1].[id]) AND ((resume.obraz)=[obraz1].[id]) AND ((resume.opit)=[opit1].[id]))
ORDER BY resume.razdel, resume.spec}

end;

procedure TForm1.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
 case tip of
  11: OpenKandidat(Form1.ADOQuery7.FieldByName('id').AsInteger, act_update);
  2: AddVakans(Form1.DataSource2.DataSet.FieldByname('id_client').AsInteger,Form1.DataSource2.DataSet.FieldByname('id').AsInteger, act_update);
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  case tip of
  11: begin end;
//   OpenKandidat(Form1.ADOQuery7.FieldByName('id').AsInteger, act_update);
  2: begin end;
//   with Form1.ADOQuery7 do begin
//    Close;
//     SQL.Clear;
//     SQL.Text:='select * from vakans where id_client='+Form1.DataSource1.DataSet.FieldByName('id').AsString;
//    Open;
//   end;//with

 end;//case
end;

end.


