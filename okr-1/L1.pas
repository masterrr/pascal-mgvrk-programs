program L1;
var
    x:array[0..100, 0..100] of real;
    f1,f2:text;
    i,j,psize,size:integer;
procedure sz(z1:text);
begin
     reset(z1);
     while not eoln(z1) do
     begin
          readln(z1);
          inc(size);
     end;
     close(z1);
end;
procedure rd(z1:text);
begin
     reset(z1);
    for i:=1 to size do
    begin
         for j:=1 to size do
             read(z1,x[i,j]);
         readln(z1);
    end;
    close(z1);
end;
procedure rep(z1,z2,z3,z4: integer);
begin
    for i:=z1 to z2 do
    begin
         for j:=z3 to z4 do
             write(f2, x[i,j]:5:2);
         for j:=z3 to z4 do
             write(f2, x[i,j]:5:2);
    writeln(f2);
    end;
end;
procedure cl(z1,z2,z3,z4:integer);
begin
     for i:=z1 to z2 do
     begin
          for j:=z3 to z4 do
              write(f2,x[i,j]:5:2);
     writeln(f2);
     end;
end;
begin
    assign(f1,'in.txt');
    assign(f2,'out.txt');
    sz(f1);
    psize:=round(size/2);
    rd(f1);
    rewrite(f2);
    if size mod 2 <> 0 then
       writeln(f2, 'Матрица не содержит в себе подматрицы порядка 2n')
    else
    begin
         rep(1, psize, psize+1, size);
         cl(psize+1, size, 1, size);
    end;
    close(f2);
end.