program pyop1;
uses crt;

var
  p: integer;
  pp: ^integer; 

begin

angka := 7;
  p := @angka; //alamat dri var angka
  pp := @p;

  writeln('Angkanya: ', angka);
  writeln('Pointer 1: ', p^); //ambil nilai dri var angka
  writeln('Pointer to another pointer: ', pp^^); //ke pointer 1
end.