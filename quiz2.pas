program Quiz2Pointer;
uses crt;

var
  nilai      : integer;
  ptr1, ptr2 : ^integer;

begin
  clrscr;
  nilai := 100;

  ptr1 := @nilai;
  ptr2 := @nilai;

  writeln('a. Nilai variabel: ', nilai);
  writeln('b. Alamat variabel (desimal): ', PtrUInt(@nilai));
  writeln('c. Nilai ditunjuk Pointer 1: ', ptr1^);
  writeln('   Nilai ditunjuk Pointer 2: ', ptr2^);
  readln;
end.