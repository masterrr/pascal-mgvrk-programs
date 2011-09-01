// array of n-numbers, how many numbers the remainder of the division is 1, 2 or 5
program program1;
var
   numbers: array [0..1000] of integer;
   i : integer;
   s1,s2,s5 : integer;
   x : real;
begin
     s1 := 0;
     s2 := 0;
     s5 := 0;
for i := 0 to 333 do  //fill the array with numbers from 0 to 20
    begin
         numbers[i] := i;
         inc(i);
    end;
for i := 0 to 333 do
    begin
         if numbers[i] mod 7 = 1 then
            inc(s1);
         if numbers[i] mod 7 = 2 then
            inc(s2);
         if numbers[i] mod 7 = 5 then
            inc(s5);
end;
    writeln('i mod 7 = 1 --- ', s1);
    writeln('i mod 7 = 2 --- ', s2);
    writeln('i mod 7 = 5 --- ', s5);
    writeln('Summ: ', s1 + s2 + s5);
end.