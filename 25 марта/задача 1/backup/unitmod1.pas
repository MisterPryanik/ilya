unit unitmod1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math;


function ugol1(a,b,c:real):real;
function ugol2 (a,b,c:real):real;
function ugol3 (a,b,c:real):real;

implementation



function ugol1(a,b,c:real):real;
var  i,k,l,z,r,s: real;
begin
 k:=((sqr(c))+(sqr(b))-(sqr(a)))/(2*c*b); //расчет косинуса альфа по формуле
 s:=sqrt(1-sqr(k)); //преобразование косинуса сльфа в синус
 l:=(s*b)/a; //расчет синуса бета
 i:=sqrt(1-sqr(l)); //перевод синуса бета в косинус
 k:=(arccos(k)*180)/pi; //перевод в градусную меру арккосинуса альфа
 i:=(arccos(i)*180)/pi; //перевод в градусную меру арккосинуса бета
 r:=180-(k+i); //  нахождение 3 угла
 ugol1:=k:5:2;
end;

function ugol2 (a,b,c:real):real;
var  i,k,l,z,r,s:real;
begin
 k:=((sqr(c))+(sqr(b))-(sqr(a)))/(2*c*b); //расчет косинуса альфа по формуле
 s:=sqrt(1-sqr(k)); //преобразование косинуса сльфа в синус
 l:=(s*b)/a; //расчет синуса бета
 i:=sqrt(1-sqr(l)); //перевод синуса бета в косинус
 k:=(arccos(k)*180)/pi; //перевод в градусную меру арккосинуса альфа
 i:=(arccos(i)*180)/pi; //перевод в градусную меру арккосинуса бета
 r:=180-(k+i); //  нахождение 3 угла
 ugol2:=i:5:2;
end;

function ugol3 (a,b,c:real):real;
var  i,k,l,z,r,s:real;
begin
 k:=((sqr(c))+(sqr(b))-(sqr(a)))/(2*c*b); //расчет косинуса альфа по формуле
 s:=sqrt(1-sqr(k)); //преобразование косинуса сльфа в синус
 l:=(s*b)/a; //расчет синуса бета
 i:=sqrt(1-sqr(l)); //перевод синуса бета в косинус
 k:=(arccos(k)*180)/pi; //перевод в градусную меру арккосинуса альфа
 i:=(arccos(i)*180)/pi; //перевод в градусную меру арккосинуса бета
 r:=180-(k+i); //  нахождение 3 угла
 ugol3:=r:5:2;
end;

end.

