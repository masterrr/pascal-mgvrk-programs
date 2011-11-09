program bebebe;
var
xnew, xold, eps:real; {корень, корень-1 дл€ сравнени€, точность}
i: integer; {счетчик количества итераций}
f: boolean; {флаг}
begin
writeln('¬ведите начальное приближение уравнени€ tg(1,5773х) - 2,3041х = 0 и точность вычислени€ eps');
readln(xnew, eps);
i:=0;
f:=false;
while ((abs(((sin(1.5773*xnew)/cos(1.5773*xnew))-2.3041*xnew)/(1/(sqr(cos(xnew)))-2.3041*xnew)-((sin(1.5773*xold)/cos(1.5773*xold))-2.3041*xold)/(1/(sqr(cos(xold)))-2.3041*xold)))>eps) do
begin
    xnew:=((sin(1.5773*xold)/cos(1.5773*xold))-2.3041*xold)/(1/(sqr(cos(xold)))-2.3041*xold); {приведенное уравнение}
    inc(i);
end;
writeln(' орень равен', xnew);
writeln(' орень найден за ', i, ' итерации(-й)');
end.