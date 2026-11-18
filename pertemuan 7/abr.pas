program ryaa;
uses crt;

    type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

mahasiswa.nama := 'ryaa';
mahasiswa.nim := '261401004';
mahasiswa.kom :='B';

mahasiswa1 := mahasiswa;

writeln ('Data Mahasiswa ');
writeln ('Nama : ', mahasiswa.nama);
writeln ('Nim : ', mahasiswa.nim);
writeln ('kom : ', mahasiswa.kom);

writeln;

writeln ('Data Mahasiswa ke-1 ');
writeln ('Nama : ', mahasiswa1.nama);
writeln ('Nim : ', mahasiswa1.nim);
writeln ('kom : ', mahasiswa1.kom);


end.