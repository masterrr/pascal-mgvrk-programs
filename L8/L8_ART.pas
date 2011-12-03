program L8_ART;
var
i, i2, i3, max2, max, c1: integer;
m: array [1..100, 1..100] of integer;
h: array [1..100] of byte;
n: array [1..100] of byte;
f1, f2: text;
procedure rd(f1: text);
var c2: integer;
begin
c1:=1;
c2:=1;
while not eof(f1) do
begin
          read(f1, m[c1,c2]);
          inc(c2);
          if eoln(f1) then
          begin
               h[c1]:=c2;
              inc(c1);
              c2:=1;
          end;

end;
for i:=1 to c1 do
begin
    for i2:=1 to h[i]-1 do
        if m[i,i2] = 0 then
        begin
           n[i]:=n[i]+1;
           if n[i]>max then
              max:=n[i];
        end;
end;
end;
begin
assign(f1, 'in.txt');
assign(f2, 'out.txt');
reset(f1);
rd(f1);
close(f1);
writeln('Максимальное количество нулей: ', max, '. Количество массивов(строк): ', c1-1);
rewrite(f2);
for i:=0 to max do
    for i2:=1 to c1-1 do
    begin
        if n[i2] = i then
        begin
            for i3:=1 to h[i2]-1 do
            write(f2, m[i2,i3]);
            writeln(f2);
        end;
    end;
close(f2);
end.