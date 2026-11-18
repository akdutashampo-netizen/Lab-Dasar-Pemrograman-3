program perkenalan;
uses crt;

procedure nama (nama: string);
begin
  writeln('Nama saya adalah ', nama, '!');
end;

var
  a : string;

begin
  clrscr;
  write('Masukkan nama Anda: ');
  readln(a);
  nama(a);
  readln;
end.