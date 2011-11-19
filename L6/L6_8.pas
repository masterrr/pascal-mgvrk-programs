program L6_8;
uses crt;
var
i, r, i2, x: integer;
binary: array [0..100] of integer;
binary1: array [0..100] of integer;
begin
clrscr;
writeln('Введите десятичное число');
readln(r);
i:=0;
while (r <> 0) do
begin
    binary[i]:=(r mod 2);
    r:=(r div 2);
    inc(i);
end;
dec(i);
x:=i;
for i2:=0 to i do
begin
    binary1[i2]:=binary[x];
    dec(x);
end;
for i2:=0 to i do
    write(binary1[i2]);
end.
