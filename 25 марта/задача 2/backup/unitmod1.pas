unit unitmod1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math;


function plo(a:real):real;


implementation



function plo(a:real):real;
var  plosh,s: real;
begin
     s:=(sqr(a)*sqrt(3))/4;
     plosh:=s;
end;


end.

