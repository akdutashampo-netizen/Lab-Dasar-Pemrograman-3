program Hitung;
uses crt;

function hitung(n: integer): longint;
begin
    if (n = 0) or (n = 1) then
        hitung := 1
    else
        hitung := n * hitung(n - 1);
end;

var
    nilai: integer;
    hasil: longint;
begin
    clrscr;
    write('Input -> Nilai : ');
    readln(nilai);
    
    hasil := hitung(nilai);
    
    writeln('Output -> Hasil : ', hasil);
    readln;
end.