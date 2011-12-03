program L9_18;
uses
crt;
var
s: string; i,c: integer;
begin
clrscr;
readln(s);
c:=0;
for i:=1 to length(s) do
    if s[i]='.' then s[i]:='!';
for i:=1 to length(s) do
begin
if s[i]='.' then inc(c);
if c=3 then
begin
 delete(s,i-2,2);
 c:=0;
end;
end;
writeln(s);
end.