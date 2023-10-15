program z3;
var a,i,max,min,index_max,index_min,kratos:int64; arrey_1:array [1..20] of int64;
begin
for a:=1 to 20 do begin
  arrey_1[a]:=Random(-52..65);
  end;
writeln(arrey_1);
max:=arrey_1[1];
i:=1;
while i<=20 do begin
  if max<arrey_1[i] then max:=arrey_1[i];
  i+=1;
  end;
  i:=1;
  min:=max;
while i<=20 do begin
  if (min>=arrey_1[i]) and (arrey_1[i]>0) then min:=arrey_1[i];
  i+=1;
  end;
i:=1;
while i<=20 do begin
  if arrey_1[i]=max then index_max:=i;
  if arrey_1[i]=min then index_min:=i;
  if arrey_1[i] mod 5=0 then kratos:=i;
  i+=1;
end;
writeln('Максимальный элемент и его индекс: ',max,' ',index_max);
writeln('Минимальный элемент и его индекс: ',min,' ',index_min);
writeln('Номер посл. элемента кратного 5: ',kratos);
end. 
