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
    b_Edit2: TEdit;
    c_Edit3: TEdit;
    label_c: TLabel;
    Label_a: TLabel;
    Label_b: TLabel;
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
var  a,b,c,ugoll1,ugoll2,ugoll3:real;
begin
a:=StrToFloat(a_Edit1.Text);
b:=StrToFloat(b_Edit2.Text);
c:=StrToFloat(c_Edit3.Text);
ugoll1:=ugol1(a,b,c);
ugoll2:=ugol2(a,b,c);
ugoll3:=ugol3(a,b,c);
Memo1.Lines.Text:='первый угол='+FloatToStr(ugoll1)+'  второй угол='+FloatToStr(ugoll2)+ '  третий угол='+FloatToStr(ugoll3);
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
    writeln(f,b_Edit2.Text);
    writeln(f,c_Edit3.Text);
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
    Showmessage ('Автор:Пичуев Илья' +#13#10+ 'Задача №2' +#13#10+  ' Даны действительные положительные числа a, b, c. По трем сторонам с длинами a, b, c можно построить треугольник. Найти углы треугольника.');
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
    readln(f,s);
    b_Edit2.Text:=s;
    readln(f,s);
    c_Edit3.Text:=s;
    closefile(f);
  end;
end;


end.

