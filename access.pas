program aksesalamat;
uses crt;

var
  angka: integer;
  i : ^word;
  ptrangka: ^integer;

begin
clrscr;

  angka := 10;
  writeln('Angkanya: ', angka);

  ptrangka := @angka; //ambil alamat 
  writeln(ptrangka^); //ambil isi dari alamat yg dituju

  i :=addr(ptrangka); 
  writeln('Alamat memorinya: ', i^);
  
end.