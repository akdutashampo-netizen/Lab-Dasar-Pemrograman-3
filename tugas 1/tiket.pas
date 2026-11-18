program PembelianTiketBioskop;
uses crt;

var
  jenisfilm, hari, jumlahtiket: integer;
  hargasatuan, hargaawal, tambahan, diskonpersen, nominaldiskon, totalbayar: real;

begin
  clrscr;
  writeln('PROGRAM PEMBELIAN TIKET BIOSKOP');
  
  writeln('Pilih Jenis Film:');
  writeln('1. Reguler (Rp30.000)');
  writeln('2. 3D (Rp45.000)');
  writeln('3. IMAX (Rp60.000)');
  write('Masukkan pilihan jenis film (1-3): '); 
  readln(jenisfilm);
  
  writeln;
  writeln('Pilih Hari:');
  writeln('1. Senin - Kamis');
  writeln('2. Jumat');
  writeln('3. Sabtu - Minggu');
  write('Masukkan pilihan hari (1-3): '); 
  readln(hari);
  
  writeln;
  write('Masukkan Jumlah Tiket: '); 
  readln(jumlahtiket);
  
  case jenisfilm of
    1: hargaSatuan := 30000;
    2: hargaSatuan := 45000;
    3: hargaSatuan := 60000;
  else
    hargaSatuan := 0;
  end;
  
  case hari of
    1: tambahan := 0;      
    2: tambahan := 5000;   
    3: tambahan := 10000;  
  else
    tambahan := 0;
  end;

  hargaawal := (hargasatuan + tambahan) * jumlahtiket;

  if hargaawal >= 200000 then
    diskonpersen := 0.10
  else if hargaawal >= 100000 then
    diskonpersen := 0.05
  else
    diskonpersen := 0;
    
  nominaldiskon := hargaawal * diskonpersen;
  totalbayar := hargaawal - nominaldiskon;

  writeln('HASIL');
  writeln('Harga Awal    : Rp ', hargaawal:0:0);
  writeln('Diskon        : Rp ', nominaldiskon:0:0);
  writeln('Total Dibayar : Rp ', totalbayar:0:0);
  
end.