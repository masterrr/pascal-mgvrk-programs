program L7;
{Перемножение матриц}
uses
    crt;
type
    tmas2 = array[1..10, 1..10] of real;
var
   m,n,e: integer;
   a,b,c:tmas2;
procedure vvodm(var m,n:integer; var a:tmas2; filename:string; fl,f2:boolean);
var
   i,j:integer;
   fin: text;
begin
     assign(fin, filename);
     {if f1 then} {??}
     reset(fin);
     readln(fin, m, m);
     for i:=1 to m do
         for j:=1 to n do
             read(fin, a[i,j]); {maybe readln need}
     if fl then
        close(fin);
end;
procedure vivodm(m,n:integer; a:tmas2; header, filename: string; var fl:boolean; fout:text; i,j:integer); {Процедура вывода}
begin
     assign(fout, filename);
     if fl then
     rewrite(fout)
     else
     append(fout);
     writeln(fout, header);
     for i:=1 to m do
     begin
         for i:=1 to n do
             write(fout, a[i, j]:8:3);
         writeln(fout);
     end;
     close(fout);
end;
procedure multm(m,n,l:integer; a,b:tmas2; var c:tmas2);
var
   i,j,k: integer;
   s: real;
begin
for i:=1 to m do
    for j:=1 to l do
    begin
         s:=0;
         for k:=1 to n do
             s:=s+a[i,k]*b[k,j];
         c[i,j]:=s;
    end;
end;
begin
vvodm(m,n,a,'LR7_1N.txt', true, false);
vvodm(n,l,b,'LR7_1N.txt', false, true);
vivodm(m,n,a,'Matrix A', 'LR7_1out.txt', true);
vivodm(n,l,b,'Matrix B', 'LR7_1out.txt', false);
multm(m,n,l,a,b,c);
vivodm(m,l,c, 'Matrix C', 'LR_some_out', false);
end.