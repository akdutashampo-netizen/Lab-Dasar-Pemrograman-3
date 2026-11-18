program ryaawww;
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

    with mahasiswa do 
    begin 
        nama := 'dyra';
        nim := '251401063';
        kom :='C';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);

    end;
writeln;
    with mahasiswa1 do 
    begin 
        nama := 'ryaa';
        nim := '261401004';
        kom :='B';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);
    end;
end.