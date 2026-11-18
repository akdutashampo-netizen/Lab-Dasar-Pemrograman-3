program logis;
uses crt;

var
  x, y : boolean;

begin
clrscr;
  x := true;
  y := false;

  writeln('x and y : ', x and y);
  writeln('x or y : ', x or y);
  writeln('not x : ', not x);
  writeln('x xor y : ', x xor y);

end.