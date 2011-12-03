program L6_8;
var n: integer;
procedure bin(a: integer);
begin
     if a>=2 then
        bin(a div 2);
     write(a mod 2);
end;
begin
writeln('Vvedite chislo');
readln(n);
bin(n);
end.