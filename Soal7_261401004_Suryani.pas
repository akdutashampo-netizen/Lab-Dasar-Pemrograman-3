program Soal7;
uses crt;

var
  kode: char;
  lamaparkir, totaltarif: longint; 
  // tipe longint agar bisa menampung nominal tarif parkir yang besar

begin
  clrscr;
  writeln('SISTEM HITUNG TARIF PARKIR');
  writeln('Kode Kendaraan: M (Mobil), K (Motor), B (Bus)');
  write('Masukkan Kode Kendaraan: ');
  readln(kode);
  kode := upcase(kode); // konversi input huruf kecil ke besar

  write('Masukkan Lama Parkir (jam): ');
  readln(lamaparkir);

  if lamaparkir <= 0 then
  begin
    writeln('Lama parkir tidak valid.');
  end

  else
  begin
    // gunakan case-of untuk mengecek jenis kendaraan
    case kode of
      'M': // kode 'm' (mobil)
        if lamaparkir > 10 then
          totaltarif := 30000 // tarif flat maksimal jika > 10 jam
        else
          totaltarif := 5000 + (lamaparkir - 1) * 3000; // rp5.000 jam pertama + rp3.000/jam berikutnya

      'K': // kode 'k' (motor)
        if lamaparkir > 10 then
          totaltarif := 10000 // tarif flat maksimal jika > 10 jam
        else
          totaltarif := 2000 + (lamaparkir - 1) * 1000; // rp2.000 jam pertama + rp1.000/jam berikutnya

      'B': // kode 'b' (bus)
        if lamaparkir > 10 then
          totaltarif := 50000 // tarif flat maksimal jika > 10 jam
        else
          totaltarif := 10000 + (lamaparkir - 1) * 5000;
    else
      writeln('Kode kendaraan tidak valid!');
      readln;
      halt; // hentikan eksekusi program jika kode salah
    end;

    // tampilkan rincian tarif
    writeln;
    writeln('Total Tarif Parkir: Rp', totaltarif);
  end;

  readln;
end.