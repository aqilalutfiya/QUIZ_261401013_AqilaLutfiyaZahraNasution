program no3;
uses crt;

function penjumlahan1 (x,y:integer):integer;
begin
    penjumlahan1:=x+y;
end;

function penjumlahan2 (x,y,z:integer):integer;
begin
    penjumlahan2:= (x+y)+z;
end;

var 
o,p,q: integer;

begin
    clrscr;

    write('Masukkan angka pertama: ');
    readln(o);
    write('Masukkan angka kedua: ');
    readln(p);
    write('Masukkan angka ketiga: ');
    readln(q);

    writeln('Hasil adalah: ' ,penjumlahan1(o,p));
    writeln('Hasil adalah: ', penjumlahan2(o,p,q));
end.