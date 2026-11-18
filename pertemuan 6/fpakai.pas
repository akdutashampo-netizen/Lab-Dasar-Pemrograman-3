program luaslingkaran;
uses crt;

function LuasLingkaran(r : real): real;
begin
  Luas := 3.14 * r * r;
end;

begin
clrscr;
  writeln('Luas Lingkaran : ', LuasLingkaran(7):0:2);
  readln;
end.