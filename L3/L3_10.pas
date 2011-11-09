program L3_10;
var
x, x1, eps:real;
i: integer;
begin
writeln('Введите начальное приближение и точность');
readln(x1, eps);
i:=0;
x:=(ln(7.622*x1)+10.5)/8.59;
repeat
begin
x1:=x;
x:=(ln(7.622*x1)+10.5)/8.59;
i:=i+1;
end;
until (abs(x-x1)<eps);
writeln('Корень: ', x);
writeln('Количество итераций: ', i);
end.