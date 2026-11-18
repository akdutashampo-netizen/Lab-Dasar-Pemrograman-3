program contohArray;
uses crt;

var
  arr: array[1..5] of integer;

begin
  clrscr;

  arr[1] := 8;
  arr[2] := 3;
  arr[3] := 4;
  arr[4] := 9;
  arr[5] := 20;

    writeln('Array indeks ke 3: ', arr[3]);
    writeln('Array indeks ke 5: ', arr[5]);
end.