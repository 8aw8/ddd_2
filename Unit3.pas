unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit7: TEdit;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    id:integer;
    opit,vozr,obraz,plata,pol,razdel,trud:integer;
    spec:string;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses unit1;
procedure TForm3.Button1Click(Sender: TObject);
var
 s_pol,s_obraz,s_spec,s_razdel,s_opit:string;
begin
 if CheckBox1.Checked then begin
    if not(razdel=1) then s_razdel:='('+'razdel='+IntToStr(razdel)+')'
    else s_razdel:='(true)';
  end
 else s_razdel:='(true)';

 if CheckBox2.Checked then s_spec:='(spec="'+spec+'"'+')'
 else s_spec:='(true)';
 if CheckBox3.Checked then s_obraz:='(obraz in (select id from obraz1 where (prioritet)<=(select prioritet from obraz1 where id='+IntToStr(obraz)+')))'
 else s_obraz:='(true)';
 if CheckBox4.Checked then s_opit:='(opit in (select id from opit1 where (year)<=(select year from opit1 where id='+IntToStr(opit)+')))'
 else s_opit:='(true)';
 if CheckBox5.Checked then begin
    if not(pol=1) then s_pol:='((pol='+IntToStr(pol)+')or(pol=1))';
 end
 else s_pol:='(true)';

 with Form3.ADOQuery1 do begin
  Close;
   SQL.Clear;
   SQL.Add('select id, client.name, vakans.spec, vakans.DateRec, razdel1.name, opit1.name, obraz1.name, pol1.name');
   SQL.Add('from vakans_text');
   SQL.Add('where '+s_razdel+' and '+s_spec+' and '+s_obraz+' and '+s_opit+' and '+s_pol);
  Open;
 end;//with;

end;

procedure TForm3.Button2Click(Sender: TObject);
var
 id_v:integer;
begin
 id_v:=ADOQuery1.FieldByName('id').AsInteger;
 ADOQuery1.Close;
 ADOTable1.Open;
 ADOTable1.Insert;
  ADOTable1.FieldByName('id_resume').AsInteger:=Form3.id;
  ADOTable1.FieldByName('id_vakans').AsInteger:=id_v;
  ADOTable1.Post;
  // if messageBox(Form3.Handle,'Если хотите сохранить изменения нажмите кнопку OK, иначе кнопку отмена','Сохранение',MB_OKCANCEL)=mb_ok
// then  else ADOTable1.Cancel;
 ADOTable1.Close;
 ADOQuery1.Open;
// Form1.DataSource1.DataSet.Close;
// Form1.DataSource1.DataSet.Open;
end;

end.
