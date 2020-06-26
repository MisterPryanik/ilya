unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, unitmod1, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    a_Edit1: TEdit;
    Label_a: TLabel;
    MainMenu: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    procedure a_Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.a_Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var  a,ploshad:real;
begin
a:=StrToFloat(a_Edit1.Text);

ploshad:=plo(a);

Memo1.Lines.Text:='площадь='+FloatToStr(ploshad);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
 var f:text;
begin
  if savedialog1.Execute then
  begin
    Assignfile(f,savedialog1.FileName);
    rewrite(f);
    writeln(f,a_Edit1.Text);
    closefile(f);
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    if Savedialog1.Execute then
  begin
    Memo1.Lines.SaveToFile(Savedialog1.FileName);
  end;
end;


procedure TForm1.MenuItem4Click(Sender: TObject);
 begin
    Showmessage ('Автор:Пичуев Илья' +#13#10+ 'Задача №1' +#13#10+  ' Дана сторона равностороннего треугольника. Найти площадь этого треугольника.');
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
 begin
  Form1.close;
 end;


procedure TForm1.MenuItem6Click(Sender: TObject);
 var f:text;
    s:string;
begin
  if opendialog1.Execute then
  begin
    Assignfile(f,opendialog1.FileName);
    reset(f);
    readln(f,s);
    a_Edit1.Text:=s;
    closefile(f);
  end;
end;


end.

