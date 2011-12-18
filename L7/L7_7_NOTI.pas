program L7_7;
uses
crt;
procedure vvod_vivod;
var
Fil:text;
i,j,n,m: integer;
a:array[1..20,1..20] of real;
S:char;
begin
writeln('Матрица:');
assign(Fil,'L7_7a.txt');
reset(Fil);
readln(Fil,n);
readln(Fil,S);
readln(Fil,m);
for i:=1 to n do
begin
for j:=1 to m do
begin
read(Fil,a[i,j],S);
write(a[i,j]:6:3,' ')
end;
writeln;
readln(Fil)
end;
close(Fil);
end;
procedure summa;
var
a:array[1..20,1..20] of real;
i,j,n,m:integer;
P:real;
bob:text;
begin
assign(bob,'L7_7b.txt');
append(bob);
P:=0;
begin
for i:=1 to m do
for j:=1 to n do
if(j<i)and(j<n-i+1) then
P:=P+a[i,j];
end;
write(bob,'Сумма элементов=',P);
write('Сумма элементов=',P);
close(bob);
end;
begin
clrscr;
vvod_vivod;
summa;
end.