program lr7;
uses crt;
type
    tmas2=array [1..10,1..10] of real;
    stroka=string[30];
var
a:tmas2;
n:integer;
procedure vvod(var a:tmas2,namefile:stroka;var n:integer);
var
i,j:integer;
fin:text;
begin
assign(fin,namefile);
reset(fin);
readln(fin,n);
for i:=1 to n do
begin
for j:=1 to n do
readln(fin,a[i,j]);
readln(fin);
end;
close(fin);
end;

procedure vivod(a:tmas2,namefile:stroka,n:integer;zag:stroka);
var
i,j:integer;
f:text;
begin
assign(f,namefile);
append(f);
rewrite(f);
writeln('Matrica)');
for i:=1 to n do
begin
for j:=1 to n do
write (f,a[i,j],' ');
writeln(f);
end;
writeln(f,zag);
close(f);
end;

procedure suma(a:tmas2,namefile:stroka,n:integer);
var
i,j:integer;
s:real;
b:text;
begin
assign(b,namefile);
append(b);
s:=0;
begin
for i:=1 to n do
for j:=1 to i do
s:=s+a[i,j];
end;
write(b,'summa = ',s);
close(b);
end;
begin
vvod(a,'a.txt',n);
vivod(a,'c.txt',n,'Matrica');
suma(a,'c.txt',n);
end.