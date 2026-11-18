program perkenalan;
uses crt;

procedure Perkenalan(nama: string);
begin
  writeln('Halo!');
  writeln('Nama saya adalah ', nama, '!');
  writeln('Saya lagi belajar Pascal');
end;

begin
  clrscr;
  Perkenalan('Ryaa');
  readln;
end.