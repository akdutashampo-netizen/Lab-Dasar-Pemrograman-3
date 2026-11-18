program Soal1;
uses crt;

var
  n, i: longint; // n = jumlah barang, i = variabel perulangan
  harga, total, diskon, totalbayar: real; // variabel perhitungan keuangan

begin
  clrscr;
  writeln('PROGRAM DAFTAR TOTAL BELANJA');

  // langkah 1: minta input jumlah barang (n)
  write('Masukkan jumlah barang (n): ');
  readln(n);
  writeln;

  // inisialisasi total awal dengan 0
  total := 0;

  // langkah 2: menggunakan perulangan 'for-to-do' untuk input harga barang ke-1 sampai ke-n
  for i := 1 to n do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga; // menjumlahkan harga ke total belanja
  end;
  
  // langkah 3: menentukan diskon menggunakan kondisi if-else
  if total >= 500000 then
    diskon := 0.20 * total // total >= Rp500.000: diskon 20%
  else if total >= 100000 then
    diskon := 0.10 * total // total >= Rp100.000: diskon 10%
  else
    diskon := 0; // total < Rp100.000: diskon 0%

  // hitung total bayar akhir
  totalbayar := total - diskon;

  // langkah 4: menampilkan rincian belanja
  writeln;
  writeln('RINCIAN BELANJA');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', totalbayar:0:2);

  readln;
end.