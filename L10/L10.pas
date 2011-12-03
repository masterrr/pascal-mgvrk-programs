program sq;
uses crt;
var
t: array [0..100, 1..2] of string; //[1..2]; 1 - elements; 2 - lenght of this elements;
f: text; c, i: integer;
procedure rd(f: text); //read the text file and write to the array
begin
     while (not (eof(f)) or not (eoln(f))) do
     begin
         inc(c);
         readln(f,t[c,1]);
     end;
end;
begin
     assign(f, 'wordlist.txt');
     reset(f);
     c:=0;
     rd(f);
     close(f);
     for i:=0 to c do
     t[i,2]:=inttostr(length(t[i,1]));
     for i:=1 to c do
    begin
        writeln(t[i,1],' | lenght: ', t[i,2]);
    end;
end.