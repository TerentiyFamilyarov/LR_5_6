program z1;
var i,a:int64; arrey_1: array [1..20] of int64;
begin
  i:=1;
  a:=1;
  for a:=1 to 20 do begin
    read(arrey_1[a]);
  end;
 while i<=20 do begin
   if (arrey_1[i]>=0) then arrey_1[i]*=0;
   if (arrey_1[i]<0) then arrey_1[i]*=arrey_1[i];
   i+=1;
 end;
 writeln(arrey_1)
end.