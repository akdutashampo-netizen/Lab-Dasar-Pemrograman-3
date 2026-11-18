program minggu;
uses crt;

var
  angka : integer;

begin
clrscr;

writeln ('Sebutkan angka ke : ');
readln(angka);

case angka of
  1 : writeln ('ini hari senin');
  2 : writeln ('ini hari selasa');
  3 : writeln ('ini hari rabu');
  4 : writeln ('ini hari kamis');
  5 : writeln ('ini hari jumat');
  6 : writeln ('ini hari sabtu');
  7 : writeln ('ini hari minggu');

else
    writeln ('angka tidak valid');
end;

end.