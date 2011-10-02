program L2_8;
{Вывелите на экран таблицу значений функции для y=a^x для x, изменяющегося от а до b с шагом h}
{Курило дмитрий; 8 вариант; Последнее изменение: 31.09.2011}
var
   x: real; {степень} {от куда считаем}
   b: real; {до куда считаем}
   h: real; {шаг}
   a: real; {oснование функции}
begin
writeln('Введите x(откуда считать), b(до куда), h(шаг), a(основание функции)');
readln(x, b, h, a);
if b<x then
begin
     while b<=x do
     begin
         writeln('-----------');
         writeln('| ', exp(ln(a)*x):3, ' |'); {stepen'}
         x:=x-h;
     end;
     end
else
begin
     while x<=b do
     begin
         writeln('-----------');
         writeln('| ', exp(ln(a)*x):3, ' |'); {stepen'}
         x:=x+h;
     end;
end;
end.