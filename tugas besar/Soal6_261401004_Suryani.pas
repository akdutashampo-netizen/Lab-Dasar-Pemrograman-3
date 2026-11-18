program Soal6;
uses crt;

var
  nilaitugas, nilaiUTS, nilaiUAS, nilaiakhir, kehadiran: real;
  indeks: char;
  lulus: boolean;

begin
  clrscr;
  writeln('PENENTUAN NILAI AKHIR MATKUL');

  // minta input komponen nilai dan persentase kehadiran
  write('Masukkan Nilai Tugas (0-100) : ');
  readln(nilaitugas);
  write('Masukkan Nilai UTS (0-100) : ');
  readln(nilaiUTS);
  write('Masukkan Nilai UAS (0-100) : ');
  readln(nilaiUAS);
  write('Masukkan Kehadiran (%) : ');
  readln(kehadiran);

  // hitung nilai akhir sesuai bobot
  nilaiakhir := (0.30 * nilaitugas) + (0.30 * nilaiUTS) + (0.40 * nilaiUAS);

  // tentukan status lulus jika nilai akhir >= 60 dan kehadiran >= 80%
  lulus := (nilaiakhir >= 60) and (kehadiran >= 80);

  // tentukan indeks huruf dengan kondisi bercabang
  if nilaiakhir >= 85 then
    indeks := 'A'
  else if nilaiakhir >= 75 then
    indeks := 'B'
  else if nilaiakhir >= 60 then
    indeks := 'C'
  else if nilaiakhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  // tampilkan hasil akhir
  writeln;
  writeln('HASIL PENILAIAN');
  writeln('Nilai Akhir : ', nilaiakhir:0:2);
  writeln('Indeks Huruf : ', indeks);

  if lulus then
    writeln('Status : LULUS')
  else
    writeln('Status : TIDAK LULUS');

  readln;
end.