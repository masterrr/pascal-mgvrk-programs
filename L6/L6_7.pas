program L6_7;
var
i, k, l, l2: longint; n: string;
function kv(n: string):longint; {n - chislo, c - kyda nakaplivaem summ}
var
i, c: integer;
begin
c:=0;
    for i:=1 to length(n) do
        c:=c+sqr(strtoint(n[i]));
        kv:=c;
end;
begin
    writeln('Chislo i skolko raz');
    readln(n, k);
    for i:=1 to k do
    begin
    l:=kv(n);
    n:=inttostr(l);
    end;
    writeln(l);
end.
