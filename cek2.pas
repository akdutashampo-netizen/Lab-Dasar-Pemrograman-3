program cekpass;
uses crt;

var
password : string;

begin
clrscr;
repeat

write ('Masukkan password : ');
readln (password);

if password <> '12345' then
writeln ('password salah');

until password = '12345';

writeln ('password benar!');
writeln('selamat datang');
end.