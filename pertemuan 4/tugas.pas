program pola;
uses crt;

var
i, j, n : integer;

begin
clrscr;

write ('Masukkan jumlah baris : ');
readln (n);

for i := n downto 1 do 
begin
    for j := 1 to i do
    begin
        write('*');
    end;
    writeln;
end;

end.