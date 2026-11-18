program Soal3;
uses crt;

var
  n, i, kategori: integer;

begin
  clrscr;
  writeln('PROGRAM DERET ANGKA');

  // langkah 1: minta input batas angka (n) dan kategori deret
  write('Masukkan nilai n: ');
  readln(n);
  writeln('Pilih Kategori Deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan Anda (1/2): ');
  readln(kategori);

  writeln;
  writeln('Hasil Deret Angka:');

  // inisialisasi penghitung
  i := 0;

  // gunakan while loop dari 1 hingga n
  while i < n do
  begin
    i := i + 1;

    // lewati angka yang tidak sesuai kategori menggunakan continue
    if (kategori = 1) and (i mod 2 = 0) then
      continue; // jika pilih ganjil tapi angka genap lewati
    if (kategori = 2) and (i mod 2 <> 0) then
      continue; // jika pilih genap tapi angka ganjil lewati

    // lewati angka kelipatan 5 menggunakan continue
    if i mod 5 = 0 then
      continue;

    // tampilkan angka yang lolos filter
    write(i, ' ');
  end;

  writeln;
  readln;
end.