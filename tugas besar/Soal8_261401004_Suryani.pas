program Soal8;
uses crt;

var
  golongan: char;
  jamkerja, jamlembur: integer;
  // tipe data longint dipakai agar muat menampung nominal jutaan rupiah
  gajipokok, gajilembur, bonus, totalgaji: longint;

begin
  clrscr;
  writeln('PERHITUNGAN GAJI KARYAWAN');
  write('Masukkan Golongan (A/B/C): ');
  readln(golongan);
  golongan := upcase(golongan); // konversi ke huruf kapital
  write('Masukkan Total Jam Kerja / Minggu: ');
  readln(jamkerja);

  // menentukan gaji pokok berdasarkan golongan
  case golongan of
    'A': gajipokok := 1500000;
    'B': gajipokok := 2000000;
    'C': gajipokok := 2500000;
  else
    writeln('Golongan tidak valid!');
    readln;
    halt;
  end;
  
  // hitung jam lembur (standar = 40 jam/minggu)
  if jamkerja > 40 then
    jamlembur := jamkerja - 40
  else
    jamlembur := 0;
  
  // hitung biaya lembur (rp20.000/jam)
  gajilembur := jamlembur * 20000;

  // bonus khusus golongan 'c' jika jam kerja > 50 jam
  bonus := 0;
  if (golongan = 'C') and (jamkerja > 50) then
    bonus := 100000;

  // hitung total gaji akhir
  totalgaji := gajipokok + gajilembur + bonus;

  // tampilkan rincian penggajian
  writeln;
  writeln('RINCIAN GAJI');
  writeln('Gaji Pokok : Rp', gajipokok);
  writeln('Gaji Lembur: Rp', gajilembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalgaji);

  readln;
end.