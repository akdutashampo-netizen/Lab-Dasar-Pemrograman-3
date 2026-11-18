program quiz1;
uses crt;

var
  nama_mahasiswa : string;
  uang_awal, harga_makanan, harga_minuman : real;

begin
clrscr;
  nama_mahasiswa := 'Ryaa';
  uang_awal := 100000.0;
  harga_makanan := 25000.0;
  harga_minuman := 15000.0;

    writeln('nama : ', nama_mahasiswa);
    writeln('total pengeluaran : ', harga_makanan + harga_minuman : 0:2);
    writeln('sisa uang : ', uang_awal - (harga_makanan + harga_minuman) : 0:2);

end.