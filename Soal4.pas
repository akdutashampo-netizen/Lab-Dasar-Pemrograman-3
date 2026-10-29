program Soal4_KelulusanMahasiswa;
{ 
  Metode Pengerjaan Soal 4:
  1. Menggunakan array terindeks untuk menyimpan komponen nilai (tugas, kuis, uts, uas) 
     serta nilai rata-rata tiap mahasiswa.
  2. Melakukan validasi input jumlah mahasiswa (n) antara 1 sampai 5.
  3. Menghitung nilai rata-rata dengan rumus: (tugas + kuis + uts + uas) / 4.
  4. Menggunakan percabangan (if-else) untuk menentukan status: 
     Jika rata-rata >= 70, maka Lulus; jika di bawah 70, Tidak Lulus.
}
uses crt;

var
  tugas, kuis, uts, uas: array[1..5] of real;
  rataRata: array[1..5] of real;
  n, i: integer;

begin
  clrscr;
  writeln('PROGRAM PENENTUAN KELULUSAN MAHASISWA');
  
  // Validasi input jumlah mahasiswa (1 s.d. 5) 
  repeat
    write('Masukkan jumlah mahasiswa (1 - 5): ');
    readln(n);
    if (n < 1) or (n > 5) then
      writeln('Jumlah mahasiswa tidak valid! Harus antara 1 sampai 5.');
  until (n >= 1) and (n <= 5);

  writeln;
  // Input komponen nilai untuk setiap mahasiswa
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i, ' ');
    write('  Masukkan Nilai Tugas : '); readln(tugas[i]);
    write('  Masukkan Nilai Kuis  : '); readln(kuis[i]);
    write('  Masukkan Nilai UTS   : '); readln(uts[i]);
    write('  Masukkan Nilai UAS   : '); readln(uas[i]);
    
    // Menghitung rata-rata dari 4 komponen nilai
    rataRata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    writeln;
  end;

  // Menampilkan Output Rekapitulasi Nilai dan Keterangan Lulus/Tidak }
  clrscr;
  writeln('           REKAPITULASI KELULUSAN MAHASISWA       ');
  
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('  - Nilai Tugas : ', tugas[i]:0:2);
    writeln('  - Nilai Kuis  : ', kuis[i]:0:2);
    writeln('  - Nilai UTS   : ', uts[i]:0:2);
    writeln('  - Nilai UAS   : ', uas[i]:0:2);
    writeln('  - Rata-rata   : ', rataRata[i]:0:2);
    
    // Seleksi kondisi kelulusan
    if rataRata[i] >= 70 then
      writeln('  - Keterangan  : LULUS')
    else
      writeln('  - Keterangan  : TIDAK LULUS');
  end;

  readln;
end.