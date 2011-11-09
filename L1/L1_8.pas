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
readln(a, b); {schityvaem chisla}
writeln('Proverka vvoda: ', a, ' ', b); {proverka vvoda}
if (a <= 0) or (b <= 0) then {Proverayem pravil'nost' vvoda cifr}
   begin
        writeln('Vy vveli otricatelnoe chislo');
   exit; {Vyhod iz programmy}
end;
p := (a+b)/2; {srednee arifmeticheskoe}
g := sqrt(a*b); {srednee geometricheskoe}
  if g < p then {sravnivaem srednee arifmeticheskoe i srednee geometricheskoe}
    begin
      writeln('srednee arifmeticheskoe ', p , ' bolshe srednego geometricheskogo ', g);
    end
    else
      writeln('srednee arifmeticheskoe ', p , ' ravno srednemy geometricheskomy ', g);
 end.