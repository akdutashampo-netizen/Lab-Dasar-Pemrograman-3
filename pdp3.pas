program pointer1;
uses crt;

var
  angka: integer;
  pAngka: ^integer; //caret didepan menunjukkan bahwa var pAngka adalah pointer ke integer

begin
angka := 10;
  pAngka := @angka; //ambil alamat dari var angka

  writeln('Nilai angkanya: ', angka);
  writeln('Nilai pointernya: ', pAngka);

  readln;
end.