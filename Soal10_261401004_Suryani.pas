program Soal10;
uses crt;

var
  nomorhari: integer;

begin
  clrscr;
  writeln('CONVERTER NOMOR KEPADA NAMA HARI');

  // minta masukan nomor hari
  write('Input (1-7): ');
  readln(nomorhari);

  // menampilkan nama hari berdasarkan angka yang diinput
  write('Output: ');
  case nomorhari of
    1: writeln('"Hari Senin"');
    2: writeln('"Hari Selasa"');
    3: writeln('"Hari Rabu"');
    4: writeln('"Hari Kamis"');
    5: writeln('"Hari Jumat"');
    6: writeln('"Hari Sabtu"');
    7: writeln('"Hari Minggu"');
  else
    writeln('"Nomor hari tidak valid! (Gunakan 1-7)"');
  end;

  readln;
end.