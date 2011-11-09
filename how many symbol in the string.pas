var
td, md:byte;
st: string;
begin
readln(st);
delete(st, 1, Pos('a', st)-1);
while Pos('a', st) <> 0 do
begin
     if Pos('a', st)=1 then
     begin
          inc(td);
          delete(st, 1, 1);
     end
     else
     begin
          if md<td then
          md:=td;
          td:=0;
          delete(st, 1, Pos('a', st)-1);
     end;
end;
writeln(td);
end.