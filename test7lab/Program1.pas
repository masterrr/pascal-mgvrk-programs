program l7_3;{ Дана действительная квадратная матрица порядка n. Найдите сумму элементов, расположенных в заштрихованной части матрицы.
Дайняк Карина, гр.03492 }
uses
 crt;
type
 tmas2 =array[1..10,1..10] of real;
 stroka=string[30];
var
 a,b,c:tmas2;
 m,n,l:integer;
procedure vvod(var a:tmas2; namefile:stroka; var m,n:integer);
var
 i,j:integer;
 fin:text;
begin
 assign(fin,namefile);
 reset(fin);
 readln(fin,n,n);
 for i:=1 to n do
 begin
  for j:=1 to m do
    read(fin,a[i,j]);
  readln(fin);
 end;
 close(fin);
end;

procedure vivodmatr(a:tmas2; namefile:stroka; m,n:integer; zag:stroka);
var
 i,j:integer;
 f: text;
begin
 assign(f,namefile);
 append(f);
 rewrite(f);
 writeln(f,'Matrica: ');
 for i:=1 to n do
 begin
  for j:=1 to m do
  write(f,a[i,j],'');
  writeln(f);
 end;
 writeln(f,zag);
 close(f);
end;
procedure suma(a:tmas2;namefile:stroka;n,m:integer);
var
 i,j:integer;
 var s,s1:real;
 b:text;
begin
 assign(b,namefile);
 append(b);
 s:=0;
 begin
  for i:=1 to n do
   for j:=1 to m do
    if(j<=i)and(j<=n-i+1) or (j>=i)and(j<=n-i+1) then
    s:=s + a[i,j];
 end;
 write(b,'summa=',s);
 close(b);
end;
begin
 clrscr;
 vvod(a,'a.txt',n,n);
 vivodmatr(a,'c.txt',n,n,'Matrica');
 suma(a,'c.txt',n,n);
end.