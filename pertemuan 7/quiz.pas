program DataMahasiswa;
uses crt;

type
  TMataKuliah = record
    nama: string;
    sks: integer;
    nilaiChar: string;
    bobot: real;
  end;

  TMahasiswa = record
    nama, nim: string;
    jmlMK: integer;
    mk: array[1..20] of TMataKuliah;
    totalSKS: integer;
    totalBobot: real;
    ips: real;
  end;

var
  mhs: array[1..50] of TMahasiswa;
  n, i, j: integer;

function KonversiNilai(nilai: string): real;
begin
  for j := 1 to length(nilai) do nilai[j] := upcase(nilai[j]);
  if nilai = 'A' then KonversiNilai := 4.0
  else if nilai = 'B+' then KonversiNilai := 3.5
  else if nilai = 'B' then KonversiNilai := 3.0
  else if nilai = 'C+' then KonversiNilai := 2.5
  else if nilai = 'C' then KonversiNilai := 2.0
  else if nilai = 'D' then KonversiNilai := 1.0
  else KonversiNilai := 0.0;
end;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa: '); readln(n);

  { Input Data }
  for i := 1 to n do
  begin
    writeln;
    writeln('Data Mahasiswa ke-', i, ' ');
    write('Nama               : '); readln(mhs[i].nama);
    write('NIM                : '); readln(mhs[i].nim);
    write('Jumlah Mata Kuliah : '); readln(mhs[i].jmlMK);

    mhs[i].totalSKS := 0;
    mhs[i].totalBobot := 0;

    for j := 1 to mhs[i].jmlMK do
    begin
      writeln('  [MK ', j, ']');
      write('  - Nama MK          : '); readln(mhs[i].mk[j].nama);
      write('  - SKS              : '); readln(mhs[i].mk[j].sks);
      write('  - Nilai (A/B+/B...): '); readln(mhs[i].mk[j].nilaiChar);

      mhs[i].mk[j].bobot := KonversiNilai(mhs[i].mk[j].nilaiChar);
      mhs[i].totalSKS := mhs[i].totalSKS + mhs[i].mk[j].sks;
      mhs[i].totalBobot := mhs[i].totalBobot + (mhs[i].mk[j].sks * mhs[i].mk[j].bobot);
    end;

    if mhs[i].totalSKS > 0 then
      mhs[i].ips := mhs[i].totalBobot / mhs[i].totalSKS
    else
      mhs[i].ips := 0;
  end;

  for i := 1 to n do
  begin
    clrscr;
    writeln('KARTU HASIL STUDI (KHS)');
    writeln('Nama : ', mhs[i].nama);
    writeln('NIM  : ', mhs[i].nim);
    writeln('No  Mata Kuliah          SKS  Nilai');
    
    for j := 1 to mhs[i].jmlMK do
    begin
      writeln(j:2, '  ', mhs[i].mk[j].nama:-20, ' ', mhs[i].mk[j].sks:3, '   ', mhs[i].mk[j].nilaiChar);
    end;
    
    writeln('Total SKS   : ', mhs[i].totalSKS);
    writeln('IP Semester : ', mhs[i].ips:0:2);
    
    if i < n then
    begin
      writeln;
      write('Tekan [ENTER] untuk melihat mahasiswa berikutnya...');
      readln;
    end
    else
    begin
      writeln;
      writeln('Semua data telah ditampilkan. Tekan [ENTER] untuk keluar.');
      readln;
    end;
  end;
end.