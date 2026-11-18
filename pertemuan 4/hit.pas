program hitung;
uses crt;

var
i, n, angka, total : integer;

begin
clrscr;
total := 0;

write ('Masukkan jumlah angka : ');
readln (n);

for i := 1 to n do 
begin
    write ('Masukkan angka ke-', i, ': ');
    readln(angka);

    total := total + angka;
end;

writeln('Total: ', total);
end.