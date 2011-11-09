program L5_4_a;
var
   A: array [1..100] of integer;
   O: array [1..100] of integer;
   i, f, c: integer;
begin
     writeln('Vvedite kolvo elementov massive');
     readln(f);
     writeln('Vvodite elementy massive');
     for i:=1 to f do
         readln(A[i]);
     writeln('Vivod elementov massiva dlya proverki ');
     for i:=1 to f do
         write(A[i], ' ');
     writeln;
     c:=1;
     for i:=1 to f do
         if A[i] < 0 then
         begin
            O[c]:=A[i];
            inc(c);
         end;
     for i:=1 to f do
         if A[i] >= 0 then
         begin
            O[c]:=A[i];
            inc(c);
         end;
     writeln('Vivod elementov konechnogo massiva ');
     for i:=1 to f do
         write(O[i], ' ');

end.


