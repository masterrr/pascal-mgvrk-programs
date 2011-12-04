program L7_3;
var
f1, f2: text;
m: array [1..100, 1..100] of integer;
size, i, j, sum, i2, c: integer;
begin
assign(f1, 'in.txt');
assign(f2, 'out.txt');
reset(f1);
    while not eof(f1) do
    begin
         readln(f1);
         inc(size);
    end;
close(f1);
reset(f1);
    for i:=1 to size do
    begin
        for j:=1 to size do
            read(f1, m[i,j]);
    readln(f1);
    end;
close(f1);
c:=size;
for i:=1 to size do
begin
     for i2:=1 to c do
         sum:=sum+m[i,i2];
    dec(c);
end;
writeln(sum);
end.