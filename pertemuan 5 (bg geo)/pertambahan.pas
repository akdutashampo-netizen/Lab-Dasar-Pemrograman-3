program penjumlahArray;
uses crt;

var
  arr1, arr2, arrH: array[1..2, 1..2] of integer;
  i, j, a: integer;

begin
  clrscr;  

    writeln('Array pertama:');
    for i := 1 to 2 do
    begin
        for j := 1 to 2 do
        begin
            write('Input array[', i, ',', j, ']: ');
            readln(a);

            arr1[i, j] := a;
        end;
    end; 

    writeln('Array kedua:');
    for i := 1 to 2 do  
    begin
        for j := 1 to 2 do
        begin
            write('Input array[', i, ',', j, ']: ');
            readln(a);

            arr2[i, j] := a;
        end;
    end;

    writeln('Hasil penjumlahan array:');
    for i := 1 to 2 do
    begin
        for j := 1 to 2 do
        begin
            arrH[i, j] := arr1[i, j] + arr2[i, j];
            write('Array [', i, ',', j, ']: ', arrH[i, j]);
        end;
    end;
    
end.