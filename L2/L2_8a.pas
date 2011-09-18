program L2_8;
{Vyvedite na jekran tablicu znachenij funkcii y=a^x dlja h, izmenjajuwegosja ot a do b s shagom h}
{Kurilo Dmitry, 8 variant; last modification: 18.09.2011}
var
   x: integer; {x, stepen'} {ot kuda, for}
   b: integer; {do kuda, for}
   h: integer; {shag}
   a: integer; {osnovanie}
begin
writeln('Vvedite x(ot kuda chitat), b(do kuda), h(shag), a(onsovanie functii) - celye chisla');
readln(x, b, h, a);
if h<1 then
   writeln('Beskonechoe vychislenie')
else
begin
     while x<=b do
     begin
         writeln('-----------');
         writeln('| ', exp(ln(a)*x):3, ' |'); {stepen'}
         inc(x, h);
     end;
end;
end.