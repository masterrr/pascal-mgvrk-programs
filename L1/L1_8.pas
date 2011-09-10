program L1_8;
{Vvedite dva polozhitel'nyh chisla i pokazhite, chto srednee arifmeticheskoe jetih chisel ne men'she ih srednego geometricheskogo}
{Kurilo Dmitry, 8 variant; last modification: 10.09.2011}
uses
    crt;
var
   a,b: integer; {input}
   p,g: real; {srednee geometricheskoe, srednee arifmeticheskoe}
begin
writeln('Vvedite 2 polozitelnih chisla');
readln(a, b);
if (a <= 0) or (b <= 0) then {Proverayem pravil'nost' vvoda cifr}
   begin
     writeln('Vy vveli otricatelnoe chislo');
     exit; {Vyhod iz programmy}
   end;

{srednee arifmeticheskoe}
p := (a+b)/2;
{srednee geometricheskoe}
g := sqrt(a*b);
{test}
writeln(p, ' ', g);
{/test}
if g < p then
begin
writeln('srednee geometricheskoe ', g , ' menshe srednego arifmeticheskogo ', p);
end
else
writeln('srednee geometricheskoe ', g , ' ravno srednemy arifmeticheskomy ', p);
end.