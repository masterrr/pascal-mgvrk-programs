program L7_12;
var
   a:array [1..100] of integer;
   c: set of byte;
   f1: text;
   i, t: integer;
begin
     assign(f1, 'in.txt');
     i:=1;
     reset(f1);
     while not eof (f1) do
     begin
           read(f1, a[i]);
            inc(i);
     end;
     close(f1);
     dec(i);
     for t:=1 to i do
         c:=c+[a[t]];
     for t:=0 to 255 do
         if t in c then write(t:5);
end.

