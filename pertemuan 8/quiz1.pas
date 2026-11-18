program Quiz1MakananPointer;
uses crt;

type
  TMakanan = record
    nama  : string;
    harga : longint;
  end;
  PMakanan = ^TMakanan;

var
  menu           : array[1..100] of TMakanan;
  pMahal, pMurah : PMakanan;
  n, i           : integer;

begin
  clrscr;
  write('Masukkan jumlah makanan: ');
  readln(n);
  writeln;

  for i := 1 to n do
  begin
    writeln('Data Makanan ke-', i);
    write('Nama Makanan  : ');
    readln(menu[i].nama);
    write('Harga Makanan : Rp');
    readln(menu[i].harga);
    writeln;
  end;

  pMahal := @menu[1];
  pMurah := @menu[1];

  for i := 2 to n do
  begin
    if menu[i].harga > pMahal^.harga then
      pMahal := @menu[i];

    if menu[i].harga < pMurah^.harga then
      pMurah := @menu[i];
  end;

  writeln('HASIL PENCARIAN');
  writeln('a. Makanan Termahal : ', pMahal^.nama, ' (Rp', pMahal^.harga, ')');
  writeln('b. Makanan Termurah : ', pMurah^.nama, ' (Rp', pMurah^.harga, ')');
  readln;
end.