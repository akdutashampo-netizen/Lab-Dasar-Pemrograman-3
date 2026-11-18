program Soal4;
uses crt;

var
  pilihan, hasilint, sisamod: integer;
  bil1, bil2, hasilreal: real; // tipe real agar bisa menerima desimal
  ulang: char;

begin
  // perulangan repeat-until untuk mengulang kalkulator
  repeat
    clrscr;
    // tampilkan menu pilihan operasi
    writeln('KALKULATOR SEDERHANA');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    // minta dua angka dari user
    write('Masukkan angka pertama : ');
    readln(bil1);
    write('Masukkan angka kedua : ');
    readln(bil2);

    writeln;
    // gunakan case untuk menentukan operasi berdasarkan pilihan
    case pilihan of
      1: writeln('Hasil: ', (bil1 + bil2):0:2);
      2: writeln('Hasil: ', (bil1 - bil2):0:2);
      3: writeln('Hasil: ', (bil1 * bil2):0:2);
      4: begin
          // cek pembagian dengan nol
          if bil2 <> 0 then
            writeln('Hasil: ', (bil1 / bil2):0:2)
          else
            writeln('Error: Pembagian dengan nol!');
         end;
      5: begin
          if trunc(bil2) <> 0 then
          begin
            // div dan mod butuh integer, gunakan trunc() untuk ubah tipe real
             hasilint := trunc(bil1) div trunc(bil2);
             sisamod := trunc(bil1) mod trunc(bil2);
             writeln('Hasil DIV : ', hasilint);
             writeln('Hasil MOD : ', sisamod);
          end
          else
             writeln('Error: Pembagian dengan nol!');
        end;
    else
      writeln('Pilihan tidak valid!');
    end;

    // tanyakan perulangan di akhir
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't'); // perulangan berjalan sampai pengguna menjawab 't' atau 't'
end.