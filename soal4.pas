program matriks;
uses crt;

var
matrix: array[1..10,1..10] of integer;
i,j: integer;

begin
    clrscr;

    //input nilai
    for i:= 1 to 10 do 
    begin
        for j := 1 to 10 do
        begin
            write('matrix ', i, '', ': ');
            readln(matrix[i,j]);
        end;
    end;
    writeln; 

    //akses nilai
    for i:= 1 to 10 do
    begin
        for j:= 1 to 10 do
        begin
            write(matrix[i,j], ' ');
        end;
        writeln;
    end;

end.


