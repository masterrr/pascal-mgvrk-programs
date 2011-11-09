var
i, n: integer;
c: integer;
begin
writeln;
readln(n);
for i:=1 to n+1 do
    if (n mod i) = 0 then
       inc(c);
if c > 2 then
writeln('Число не простое')
else
writeln('Простое')
end.