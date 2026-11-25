program nilaiMahasiswa;
uses crt;

var
var
tugas, kuis, uts, uas: array[1..5] of integer;
nilai_akhir: array[1..5] of real;
n, i: integer;
nama: string;
rerta: real;
rendah, tinggi, na_rendah, na_tinggi: real;
total: real;
grade: char;

function hitungNilai (uts,tugas,nilai: real): real;
begin
    hitungNilai:= (uts * 0.3) +(uas * 0.4)+ (tugas*0.3);
end;

function tentukanGrade (grade: char):char;
begin
    if nilai>= 85 then
    grade := 'A';
    else if nilai >= 70 then 
    grade := 'B';
    else if nilai >= 55 then 
    grade := 'C';
    else if nilai >= 40 then 
    grade := 'D';
    else grade:= 'E';
end;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa: ');
    readln(n);
    begin
        for i := 1 to n do
        begin
        writeln('Mahasiswa ke-', i);
        repeat
        write('Nilai tugas: ');
        readln(tugas[i]);
        until (tugas[i] >= 0) and (tugas[i] <= 100);

        repeat
        write('Nilai UTS: ');
        readln(uts[i]);
        until (uts[i] >= 0) and (uts[i] <= 100);
        
        write('Nilai UAS: ');
        readln(uas[i]);
        until (uas[i] >= 0) and (uas[i] <= 100);

        nilai_akhir[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]);
        writeln;
        end;
    

        for i := 1 to n do
        begin
        writeln('Mahasiswa ke-', i);
        writeln('  Tugas      : ', tugas[i]);
        writeln('  Kuis       : ', kuis[i]);
        writeln('  UTS        : ', uts[i]);
        writeln('  UAS        : ', uas[i]);
        writeln('  Nilai Akhir  : ', nilai_akhir[i]:0:2);
        end;

    end
    end.