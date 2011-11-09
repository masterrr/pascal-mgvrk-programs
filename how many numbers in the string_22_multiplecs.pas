var
md, i:byte;
mn: set of byte;
st: string;
begin
md:=0
mn:=[];
for i:=1 to lenght(st) do
    if st[i]='a' then
       begin
            inc(md);
            mn:=mn+[md];
       end
       else
           md:=0;