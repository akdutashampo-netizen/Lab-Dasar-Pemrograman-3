program arrayDinamis;
uses crt;

var
    // arr : array[1..100] of integer; // statis
  arr: array of integer;
  a, i, b: integer;

begin
  clrscr;
  write('Mau array ukuran berapa? ');
  readln(a); // a = 5

  setlength(arr, a);

  //array pada dasarnya punya indeks dari 0
  write('input angka: ');
    for i := 0 to a - 1 do
    begin
        write('Input array[', i, ']: ');
        readln(b);
        arr[i] := b;
    end;

    writeln('Output angka: ');
    for i := 0 to a - 1 do
    begin
        writeln('Array[', i, ']: ', arr[i]);
    end;
end.