program array2dimensi;
uses crt;

var
  arr: array[1..2, 1..2] of integer;
  i, j: integer;
  
begin
  clrscr;

    arr[1, 1] := 3;
    arr[1, 2] := 7;
    arr[2, 1] := 9;
    arr[2, 2] := 20;
    
    // cara kuno
    // write ('Array indeks ke',1,',',1,': ',arr[1, 1]);
    // write ('Array indeks ke',1,',',2,': ',arr[1, 2]);
    // write ('Array indeks ke',2,',',1,': ',arr[2, 1]);
    // write ('Array indeks ke',2,',',2,': ',arr[2, 2]);

    // cara mudah (looping0)
    for i := 1 to 2 do
    begin
      for j := 1 to 2 do
      begin
        writeln('Array indeks ke ', i, ',', j, ': ', arr[i, j]);
      end;
    end;
end.