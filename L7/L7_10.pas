program L7_8;
var
    x:array[0..100, 0..100] of integer;
    f1,f2:text;
    i,j,psize,size:integer;
procedure sz(z1:text);
begin
while not eoln(z1) do
begin
     readln(z1);
     inc(size);
end;
end;
procedure rd(z1:text);
begin
    for i:=1 to size do
    begin
         for j:=1 to size do
             read(z1,x[i,j]);
         readln(z1);
    end;
end;
procedure cl(z1,z2,z3,z4:integer);
begin
     for i:=z1 to z2 do
     begin
          for j:=z3 to z4 do
              write(f2,x[i,j],' ');
     writeln;
     end;
end;
procedure rcl(z1,z2,z3,z4,z5,z6:integer);
begin
     for i:=z1 to z2 do
     begin
          for j:=z3 to z4 do
              write(f2,x[i,j],' ');
          for j:=z5 to z6 do
              write(f2,x[i,j],' ');
     writeln;
     end;
end;
begin
    assign(f1,'in.txt'); {assign 'in.txt' to f1 variable}
    assign(f2,'out.txt'); {assign 'out.txt to f2 variable}
    reset(f1); {open f1 file for read}
    size:=0; {accumulation of the sum}
    sz(f1); {calculate size of square-matrix from f1 file}
    close(f1); {close f1 file}
    reset(f1); {open f1 file for read}
    writeln;
    psize:=round(size/2); {calculate size from square-submatrixes}
    writeln('Matrix size ',size); {display matrix size}
    writeln('Submatrix size: ',psize); {display submatrix size}
    rd(f1); {read the matrix into to array}
    close(f1); {close f1 file}
    rewrite(f2); {create/rewrite f2 file}
    rcl(psize+1,size,psize+1,size,1,psize);
    cl(1,psize,1,size);
    close(f2); {close f2(apply changes)}
end.