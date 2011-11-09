program L5_8;
{Дана последовательность чисел a1, a2, ..., an.
 Найдите модуль наибольшего по модулю элемента последовательности.}
var
A: array [1..100] of real;
n, i: integer;
max: real;
begin
writeln('Введите количество элементов массива');
readln(n);
writeln('Введите элементы массива');
for i:=1 to n do
    read(A[i]);
writeln('Вывод элементов для проверки');
for i:=1 to n do
    write(A[I], ' ');
max:=abs(A[1]);
for i:=1 to n do
begin
    if max < abs(A[i]) then
    max:=abs(A[i])
end;
writeln;
writeln('Модуль наибольшего по модулю элемента последовательности равен ', max);
end.
