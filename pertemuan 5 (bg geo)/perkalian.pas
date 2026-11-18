program perkalianmatriks;
uses crt;

var
  arr1, arr2, arrH: array[1..2, 1..2] of integer;
  i, j, a, k, jumlah: integer;

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

    writeln('Hasil perkalian array:');
    for i := 1 to 2 do
    begin
        for j := 1 to 2 do
        begin
            jumlah := 0;
            for k := 1 to 2 do
            begin
                jumlah := jumlah + (arr1[i, k] * arr2[k, j]);
            end;
            arrH[i, j] := jumlah;ar
            writeln('Array [', i, ',', j, ']: ', arrH[i, j]);
        end;
    end;
end.