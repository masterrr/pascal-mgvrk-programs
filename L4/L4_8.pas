-program L4_8;
{Вычислите (|A1| -A1) + ... + (|AN| - AN)}
{Дмитрий Курило; Вариант 8; Дата последнего изменения: 09.10.2011}
const
     f=1000; {количество зарезервированных элементов массива}
var
   A: array[1..f] of real;
   i: integer;
   sum: real;
   n: integer;
begin
     writeln('Введите количество элементов массива');
     readln(n);
     writeln('Введите элементы массива');
     for i:=1 to n do
         read(A[i]);
     writeln('Вывод элементов для проверки:');
     for i:=1 to n do
         write(A[i], ' ');
     sum:=0;
     for i:=1 to n do
         sum:=sum+(abs(A[i])-A[i]);
writeln;
writeln('Результат записан в переменную sum, и равняется ', sum);
end.