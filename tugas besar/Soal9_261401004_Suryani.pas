program Soal9;
uses crt;

var
  tahun, bulan, jumlahhari: integer;
  kabisat: boolean;

begin
  clrscr;
  writeln('CEK JUMLAH HARI DALAM BULAN');

  // minta input tahun dan nomor bulan
  write('Masukkan Tahun : ');
  readln(tahun);
  write('Masukkan Bulan (1-12): ');
  readln(bulan);
  
  // cek tahun kabisat menggunakan operator mod
  // syarat: habis dibagi 400 atau (habis dibagi 4 tetapi tidak habis dibagi 100)
  if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    kabisat := true
  else
    kabisat := false;

  // tentukan jumlah hari berdasarkan bulan
  case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahhari := 31; // bulan 31 hari
    4, 6, 9, 11: jumlahhari := 30; // bulan 30 hari
    2: begin
        // bulan februari tergantung status kabisat
         if kabisat then
           jumlahhari := 29
         else
           jumlahhari    := 28;
       end;

  else
    writeln('Bulan tidak valid!');
    readln;
    halt;
  end;

  // tampilkan hasil
  writeln;
  if kabisat then
    writeln('Tahun ', tahun, ' adalah Tahun Kabisat.')
  else
    writeln('Tahun ', tahun, ' Bukan Tahun Kabisat.');

  writeln('Jumlah hari pada bulan ', bulan, ' adalah ', jumlahhari  , ' hari.');
  readln;

end.