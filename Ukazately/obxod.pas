{HE PABOTAET!}
program abc;
Type
uk=^stek;
stek=record
    x,y: integer;
    next: uk;
end;
m2=array[0..8,0..8] of integer;
var top: uk; j,m,n,kol: integer; ft: text;
procedure pushstek(var top: uk; x,y: byte);
var
temp: uk;
begin
     new(temp);
     temp^x:=x;
     temp^y:=y;
     temp^next:=top;
     top:=temp;
end;
procedure popstek(var top: uk; var x,y: integer;);
var
temp: uk;
begin
     if top<>nil then
     begin
      x:=top^x;
      y:=top^y;
      temp:=top;
      top:=top^next;
      dispose(temp);
     end;
end;
procedure fill(x,y: integer;)
var fl: boolean;
begin
	repeat
	fl:=true;
	if a[i-1,j]=0 then
		pushstek(top,i-1,j);
	if a[i+1,j]=0 then
		pushstek(top,i+1,j);
	if a[i, j+1]=0 then
		pushstek(top,i,j+1);
	if a[i, j-1]=0 then
		pushstek(top,i,j-1);

end;
begin
createstek(top);
lp;:=0;
for i:=1 to n do
    for i:=1 to m do
        if a[i,j]=0 then
           begin
               inc(kol);
           	if top <> nil then
			begin
				a[i,j]:=kol+1;
           		fill(i,1);
				popstek(top,i,j);
			end;
		end;
end.