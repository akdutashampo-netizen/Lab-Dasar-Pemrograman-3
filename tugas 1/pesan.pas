program SistemPemesananMakanan;
uses crt;

var
  kodemakanan, jumlah, statuspelanggan: integer;
  hargasatuan, hargamakanan, totalharga, nominaldiskon, totalbayar: real;
  diskonpersen: real;

begin
  clrscr;
  writeln('PROGRAM SISTEM PEMESANAN MAKANAN');

  writeln('Menu Makanan:');
  writeln('1. Nasi Goreng (Rp20.000)');
  writeln('2. Mie Goreng (Rp18.000)');
  writeln('3. Ayam Geprek (Rp25.000)');
  writeln('4. Steak (Rp50.000)');
  write('Pilih kode makanan (1-4): '); 
  readln(kodemakanan);

  write('Masukkan jumlah pesanan: '); 
  readln(jumlah);

  if jumlah <= 0 then
  begin
    writeln('Jumlah pesanan tidak valid.');
  end

  else if jumlah > 10 then
  begin
    writeln('Pesanan terlalu banyak.');
  end

  else
  begin
    writeln;
    writeln('Status Pelanggan:');
    writeln('1. Member');
    writeln('2. Non-member');
    write('Pilih status pelanggan (1-2): '); 
    readln(statuspelanggan);

    case kodeMakanan of
      1: hargasatuan := 20000;
      2: hargasatuan := 18000;
      3: hargasatuan := 25000;
      4: hargasatuan := 50000;
    else
      hargasatuan := 0;
    end;
    
    totalharga := hargasatuan * jumlah;
    hargamakanan := hargasatuan;

    diskonpersen := 0;
    if statuspelanggan = 1 then
    begin
      if totalharga >= 100000 then
        diskonpersen := 0.15
      else if totalharga >= 50000 then
        diskonpersen := 0.10
      else if totalharga < 50000 then
        diskonpersen := 0.05;
    end

    else if statuspelanggan = 2 then
    begin
      if totalharga >= 100000 then
        diskonpersen := 0.05
      else
        diskonpersen := 0;
    end;
    
    nominaldiskon := totalharga * diskonpersen;
    totalbayar := totalharga - nominaldiskon;

    writeln;
    writeln('HASIL');
    writeln('Harga Makanan (Satuan) : Rp ', hargamakanan:0:0);
    writeln('Total Harga : Rp ', totalharga:0:0);
    writeln('Diskon : Rp ', nominaldiskon:0:0);
    writeln('Total Harus Dibayar : Rp ', totalbayar:0:0);
    writeln;
  end;
  
end.