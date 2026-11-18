program ryaa;
uses crt;

type 
        data = record
            nama : string;
            nim : string;
            umur : integer;
        end;

var 
mahasiswa : array [1..3] of data;
i : integer;

begin
clrscr;

for i := 1 to 3 do 
    begin 
        write ('Nama : '); readln (mahasiswa[i].nama);
        write ('Nim : '); readln (mahasiswa[i].nim);
        write ('Umur : '); readln (mahasiswa[i].umur);
        writeln;
    end;

for i := 1 to 3 do 
    begin
        writeln (mahasiswa[i].nama);
        writeln (mahasiswa[i].nim);
        writeln (mahasiswa[i].umur);
        writeln;
    end;

end.