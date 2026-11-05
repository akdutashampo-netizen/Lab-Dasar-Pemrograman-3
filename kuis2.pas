program CekBilanganPrima;
uses crt;

function Prima(angka: integer): boolean;
var
    i, bagi: integer;
begin
    bagi := 0;
    for i := 1 to angka do
    begin
        if angka mod i = 0 then
            bagi := bagi + 1;
    end;
    
    if (angka > 1) and (bagi = 2) then
        Prima := true
    else
        Prima := false;
end;

var
    angka: integer;
begin
    clrscr;
    write('Input -> Angka : ');
    readln(angka);
    
    if Prima(angka) then
        writeln('Output -> Prima')
    else
        writeln('Output -> Non-Prima');
        
    readln;
end.