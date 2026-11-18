program penjumlahan;
uses crt;

function tambah (a,b : intenger): integer;
begin
    tambah := a + b;
end;

var
  c, d, hasil : integer;

begin
  clrscr;
  
    write('Masukkan angka pertama : ');
    readln(c);

    write('Masukkan angka kedua : ');
    readln(d);

    hasil := tambah(c,d);
    writeln;
    writeln('Hasil penjumlahan : ', hasil);
end.