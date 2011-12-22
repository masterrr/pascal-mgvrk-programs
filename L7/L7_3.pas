program L7_3;
var
f1, f2: text;
m: array [1..100, 1..100] of integer;
size, i, j, sum, i2, c: integer;
function sz(f1: text):integer;
var siz: integer;
begin
reset(f1);
siz:=0;
    while not eof(f1) do
    begin
         readln(f1);
         inc(siz);
    end;
    sz:=siz;
close(f1);
end;
function haribo(size,c: integer):integer;
var bear: integer;
begin
      bear:=0;
      for i:=1 to size do
      begin
          for i2:=1 to c do
          bear:=bear+m[i,i2];
      dec(c);
      haribo:=bear;
end;
end;
procedure rd(z1: text);
var i, j: integer;
begin
reset(f1);
 for i:=1 to size do
 begin
      for j:=1 to size do
          read(z1, m[i,j]);
      readln(z1);
end;
close(f1);
end;
begin
assign(f1, 'in.txt');
assign(f2, 'out.txt');
size:=(sz(f1));
rd(f1);
c:=size;
sum:=haribo(size,c);
rewrite(f2);
writeln(f2, 'Результат: ', sum);
close(f2);
end.