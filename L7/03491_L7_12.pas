program L7_12_03491GROUP;
uses crt;
var
    x:array[0..100, 0..100] of integer;
    f1:text;
    size:integer;
    i, j, max: integer;
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
procedure arfmst(z1,z2,z3,z4: integer);
var arm: real; max: integer;
begin
arm:=0;
max:=0;
 for j:=z1 to z3 do
    begin
    max:=0;
        for i:=z2 to z4 do
        begin
            max:=max+x[i,j];
        end;
    arm:=max/size;
    writeln(arm);
    end;
end;
begin
    assign(f1,'in.txt');
    sz(f1);
    rd(f1);
    arfmst(1,1,size,size);
end.