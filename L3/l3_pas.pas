program L3_1;
var
x, x1, eps: real;
i: integer;
begin
writeln('Введите начальное приближение и точность вычисления корня');
readln(x1, eps);
i:=0;
x:=arctan(2.3041*x1)/1.5773;
repeat
begin
    x1:=x;
    x:=arctan(2.3041*x1)/1.5773;
    inc(i);
end;
until (abs(x-x1)<eps);
writeln('Корень: ', x);
writeln('Корень найден за ', i, ' итерации');
end.