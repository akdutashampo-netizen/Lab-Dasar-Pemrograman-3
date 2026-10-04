program Soal5;
uses crt;

var
  m, n, i, j, lulus, tidaklulus: integer;
  nilai, totalnilai, ratarata: real;

begin
  clrscr;
  writeln('REKAPITULASI NILAI MAHASISWA');

  // minta input m (jumlah mahasiswa) dan n (jumlah tugas)
  write('Masukkan jumlah mahasiswa (m): ');
  readln(m);
  write('Masukkan jumlah tugas (n): ');
  readln(n);

  // inisialisasi penghitung kelulusan
  lulus := 0;
  tidaklulus := 0;

  // gunakan nested loop (for-do bersarang)
  for i := 1 to m do // loop luar untuk tiap mahasiswa
  begin
    writeln;
    writeln('Mahasiswa ke-', i, ' ');
    totalnilai := 0; // reset total nilai untuk mahasiswa baru
    
    for j := 1 to n do // loop dalam untuk tiap nilai tugas
    begin
      write('Nilai Tugas ', j, ': ');
      readln(nilai);
      totalnilai := totalnilai + nilai;
    end;

    // hitung rata-rata nilai dan tentukan status kelulusan
    ratarata := totalnilai / n;
    write('Rata-rata Nilai: ', ratarata:0:2, ' ');

    if ratarata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1; // tambah rekap lulus
    end

    else
    begin
      writeln('TIDAK LULUS');
      tidaklulus := tidaklulus + 1; // tambah rekap tidak lulus
    end;
  end;

  // tampilkan ringkasan total mahasiswa lulus dan tidak lulus
  writeln;
  writeln('RINGKASAN KELULUSAN');
  writeln('Total Mahasiswa LULUS : ', lulus);
  writeln('Total Mahasiswa TIDAK LULUS : ', tidaklulus);
  readln;
end.