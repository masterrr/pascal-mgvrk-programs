uses
  crt;
const
  n=5;{количество слов в массиве}
var
  a: array [1..n] of string;
  s,temp: string;
  i,j,c: integer;
  fl: boolean;
  m: set of char;
begin
  writeln('Введите слово...');
  readln(s);
  {задаем массив слов}
  for i:=1 to n do
  begin
    write(i,' элемент: ');
    readln(a[i])
  end;
  {считаем}
  c:=0;
  writeln('Массив:');
  write('[ ');
  for i:=1 to n do
  begin
    fl:=true;
    temp:=a[i];
    m:=[];
    if length(temp)=length(s) then
    begin
       for j:=1 to length(temp) do
         m:=m+[temp[j]];
       for j:=1 to length(s) do
         if not (s[j] in m) then
         begin
           fl:=false;
           break
         end;
    end
    else
      fl:=false;
    if fl then
    begin
      inc(c);
      textcolor(2)
    end
    else
      textcolor(4);
    write(a[i],' ')
  end;
  textcolor(0);
  writeln(']');
  {выводим}
  writeln('В данном массиве их: ',c)
end.