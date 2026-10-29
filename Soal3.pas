program Soal3_UrutNilaiUAS;
{ 
  Metode Pengerjaan Soal 3:
  1. Menggunakan tipe data array untuk menyimpan nilai-nilai UAS mahasiswa.
  2. Menggunakan validasi input sederhana (perulangan while) agar jumlah mahasiswa (n) 
     hanya bisa diisi antara 1 sampai 10.
  3. Menggunakan metode Bubble Sort sederhana untuk mengurutkan nilai dari 
     yang terkecil (terendah) ke yang terbesar (tertinggi).
}
uses crt;

var
  nilai: array[1..10] of integer;
  n, i, j, temp: integer;

begin
  clrscr;
  writeln('PROGRAM PENGURUTAN NILAI UAS MAHASISWA');
  
  // Validasi input jumlah mahasiswa (1 s.d. 10) 
  repeat
    write('Masukkan jumlah mahasiswa (1 - 10): ');
    readln(n);
    if (n < 1) or (n > 10) then
      writeln('Jumlah mahasiswa tidak valid! Harus antara 1 sampai 10.');
  until (n >= 1) and (n <= 10);

  writeln;
  // Input nilai UAS untuk setiap mahasiswa
  for i := 1 to n do
  begin
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);
  end;

  // Proses Pengurutan (Bubble Sort: dari terendah ke tertinggi)
  for i := 1 to n - 1 do
  begin
    for j := 1 to n - i do
    begin
      if nilai[j] > nilai[j + 1] then
      begin
        // Tukar posisi nilai jika nilai sekarang lebih besar dari sebelah kanannya
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
      end;
    end;
  end;

  // Menampilkan hasil pengurutan nilai
  writeln;
  writeln('Daftar Nilai UAS Mahasiswa (Dari Terendah ke Tertinggi):');
  for i := 1 to n do
  begin
    write(nilai[i], ' ');
  end;
  writeln;

  readln;
end.