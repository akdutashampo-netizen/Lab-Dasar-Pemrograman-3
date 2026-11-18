program record1;
uses crt;

    type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa : data;


begin 
clrscr;
textcolor(yellow);
mahasiswa.nama := 'ryaa';
mahasiswa.nim := '261401004';
mahasiswa.kom :='B';

writeln ('Nama : ', mahasiswa.nama);
writeln ('Nim : ', mahasiswa.nim);
writeln ('kom : ', mahasiswa.kom);

end.