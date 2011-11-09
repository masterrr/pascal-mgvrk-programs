program L7_8;
var
    x: array[0..10, 0..10] of integer;
    f1, f2: text;
    i, j, psize, size: integer;
procedure sz(z1:text);
begin
while not eoln(z1) do
begin
     readln(z1);
     inc(size);
end;
end;
procedure rd(z1:text);
begin
    for i:=1 to size do
    begin
    for j:=1 to size do read(z1, x[i,j]);
    ReadLn(z1);
    end;
end;
begin
    assign(f1, 'matrix_input.txt');
    assign(f2, 'maxtrix_output.txt');
    reset(f1);
    size:=0;
    sz(f1); {calculate size of square-matrix}
    close(f1);
    reset(f1);
    writeln;
    psize:=round(size/2); {calculate size of square-submatrixes}
writeln('Matrix size ', size);
writeln('Submatrix size: ', psize);
rd(f1);
close(f1);
rewrite(f2);
for i:=(psize+1) to size do
begin
for j:=1 to size do
    write(f2, x[i,j], ' ');
writeln;
end;
for i:=1 to psize do
begin
    for j:=psize+1 to size do
        write(f2, x[i, j], ' ');
    for j:=1 to psize do
        write(f2, x[i, j], ' ');
    writeln;
end;
close(f2);
end.