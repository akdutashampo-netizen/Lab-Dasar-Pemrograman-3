program bit;
uses crt;

var
  a, b : integer;

begin
  clrscr;
  a := 5;
  b := 2;
  writeln('a and b : ', a and b);
  writeln('a or b : ', a or b);
  writeln('a xor b : ', a xor b);
  writeln('not a : ', not a);
  writeln('a shl b : ', a shl b);
  writeln('a shr b : ', a shr b);

end.
