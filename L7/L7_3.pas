program L7_3;
var
f1, f2: text;
m: array [1..100, 1..100] of integer;
size, i, j: integer;
begin
assign(f1, 'in.txt');
assign(f2, 'out.txt');
reset(f1);
    while not eof(f1) do
    begin
         readln(f1);
         inc(size);
    end;
                    for i:=1 to size do
                    begin
                        for j:=1 to size do
                            read(f1, m[i,j]);
                    readln(f1);
                    end;

writeln(' ', m[1,1]);
close(f1);
end.