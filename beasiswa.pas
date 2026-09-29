program PenentuanBeasiswa;
uses crt;

var
  ipk, penghasilan: real;
  prestasi: integer;

begin
  clrscr;
  writeln('PROGRAM PENENTUAN BEASISWA');

  write('Masukkan IPK: '); 
  readln(ipk);
  write('Masukkan Penghasilan Orang Tua (Rp): '); 
  readln(penghasilan);
  write('Masukkan Jumlah Prestasi: '); 
  readln(prestasi);
  
  writeln;
  writeln('HASIL');

  if ipk < 2.75 then
  begin
    writeln('IPK Tidak Memenuhi Syarat');
  end

  else if (ipk >= 3.75) and (penghasilan <= 5000000) and (prestasi >= 2) then
  begin
    writeln('Mendapatkan Beasiswa Penuh');
  end

  else if (ipk >= 3.50) and (penghasilan <= 7000000) and (prestasi >= 1) then
  begin
    writeln('Mendapatkan Beasiswa Sebagian');
  end

  else if (ipk >= 2.75) and (penghasilan > 7000000) then
  begin
    writeln('Penghasilan Tidak Memenuhi Syarat');
  end
  
  else
  begin
    writeln('Tidak Mendapatkan Beasiswa');
  end;

end.