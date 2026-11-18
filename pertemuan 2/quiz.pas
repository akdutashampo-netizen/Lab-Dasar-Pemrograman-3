program quiz;
uses crt;

var
  nama_mahasiswa : string;
  nilai_tugas, nilai_uts, nilai_uas : real;

begin
clrscr;
  nama_mahasiswa := 'Ryaa';
  nilai_tugas := 95.0;
  nilai_uts := 90.0;
  nilai_uas := 88.0;

  writeln('nama : ', nama_mahasiswa);
  writeln('nilai tugas * 30% : ', nilai_tugas * 0.3 : 0:2);
  writeln('nilai uts * 30% : ', nilai_uts * 0.3 : 0:2);
  writeln('nilai uas * 40% : ', nilai_uas * 0.4 : 0:2);
  writeln('nilai akhir : ', (nilai_tugas * 0.3) + (nilai_uts * 0.3) + (nilai_uas * 0.4) : 0:2);
end.