program L2_8b;
{Vyvedite na jekran tablicu znachenij funkcii y=a^x dlja h, izmenjajuwegosja ot a do b s shagom h}
var
   x: integer; {x, stepen'} {ot kuda, for}
   b: integer; {do kuda, for}
   h: integer; {shag}
   a: integer; {osnovanie}
begin
writeln('Vvedite x(ot kuda chitat), b(do kuda), h(shag), a(onsovanie functii) - celye chisla');
readln(x, b, h, a);
for x:=x to b do
begin
     writeln('-----------');
     writeln('| ', exp(ln(a)*x), ' |'); {stepen'}
end;
end.