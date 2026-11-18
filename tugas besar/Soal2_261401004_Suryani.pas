program Soal2;
uses crt;

const
  // langkah 1: menyimpan kata sandi rahasia secara internal
  sandi_rahasia = 'pascal123';

var
  inputsandi: string; // tempat menampung input sandi dari user
  percobaan: integer; // penghitung kesempatan login

begin
  clrscr;
  writeln('SISTEM VERIFIKASI KATA SANDI');
  percobaan := 0;

  // perulangan repeat-until untuk membatasi percobaan login
  repeat
    percobaan := percobaan + 1; // tambah hitungan percobaan
    write('Masukkan kata sandi (Percobaan ', percobaan, '/3): ');
    readln(inputsandi);

    // cek apakah kata sandi benar
    if inputsandi = sandi_rahasia then
    begin
    // langkah 3: jika benar, tampilkan pesan sukses dan hentikan loop dengan break
      writeln('Login Berhasil! Selamat Datang');
      break; // menghentikan perulangan secara langsung
    end
    else
    begin
      // jika salah dan masih ada kesempatan, beri peringatan
      if percobaan < 3 then
        writeln('Sandi salah, silakan coba lagi.')
      // langkah 4: jika sudah gagal 3 kali, tampilkan pesan akun terkunci
      else
        writeln('Akses Ditolak! Akun Terkunci.');
    end;
  until percobaan = 3; // loop berhenti jika sudah 3 kali percobaan

  readln;
end.