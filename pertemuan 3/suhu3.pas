program cektubuh;
uses crt;

var
    suhu : real;

begin
clrscr;
writeln('Masukkan suhu tubuh (C): ');
readln(suhu);

if suhu < 36.5 then
    writeln('Suhu tubuh Anda rendah.')
else if (suhu >= 36) and (suhu <= 37.5) then
    writeln('Suhu tubuh Anda normal.')
else
    writeln('Suhu tubuh Anda demam.');
    readln;
end.