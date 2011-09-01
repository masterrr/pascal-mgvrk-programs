// заполнен массив n-числами, сколько чисел делится на 7 с остатком 1,2,5?
program program1;
var
   numbers: array [0..1000] of integer;
   i: integer;
   s1,s2,s5: integer;
   x: real;
begin
     s1 := 0;
     s2 := 0;
     s5 := 0;
for i:=0 to 333 do  //заполняем массив числами от 0 до 20
    begin
         numbers[i] := i;
         inc(i);
    end;
for i:=0 to 333 do
    begin
         if numbers[i] mod 7 = 1 then
            inc(s1);
         if numbers[i] mod 7 = 2 then
            inc(s2);
         if numbers[i] mod 7 = 5 then
            inc(s5);
end;
    writeln('Числа, делющееся на 7 с остатком 1 --- ', s1);
    writeln('Числа, делющееся на 7 с остатком 2 --- ', s2);
    writeln('Числа, делющееся на 7 с остатком 5 --- ', s5);
    writeln('Количетсво чисел,которые делятся на 1, 2 и 5 с остатком ', s1 + s2 + s5);
end.