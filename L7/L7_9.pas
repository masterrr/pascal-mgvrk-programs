//Nazarov, prosti za govnokod^^
program L7_9;
var
f1, f2: text;
x: array [1..100, 1..100] of integer;
size, psize, i, j: integer;
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
         for j:=1 to size do
             read(z1,x[i,j]);
         readln(z1);
    end;
end;
begin
     assign(f1, 'in.txt');
     assign(f2, 'out.txt');
     reset(f1);
     sz(f1);
     close(f1);
     reset(f1);
     rd(f1);
     close(f1);
     psize:=round(size/2);
     rewrite(f2);
for i:=1 to psize do
begin
    for j:=1 to psize do
        write(f2, x[i,j]);
    for j:=1 to psize do
        write(f2, x[i+psize, j+psize]);
writeln;
end;
for i:=psize+1 to size do
begin
    for j:=1 to psize do
        write(f2, x[i-psize, j+psize]);
    for j:=1 to psize do
        write(f2, x[i,j]);
writeln;
end;
close(f2);
end.