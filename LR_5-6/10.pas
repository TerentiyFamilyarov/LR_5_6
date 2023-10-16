program z10;//удалить все отриц эл-ты
var z,i,j,n,otr:int64;arrey_1:array[-10..10] of int64;
begin
  n:=10;
  for i:=-10 to 10 do
    arrey_1[i]:=random(-10..10);
  i:=-10;
  otr:=0;
  writeln(arrey_1);
  while i<=n do 
    if arrey_1[i]<=-1 then begin
      otr:=arrey_1[i];
      for j:=i to n-1 do arrey_1[j]:=arrey_1[j+1];//вычитание эл-та массива 
      n-=1;
      end
  else i+=1;
  write('[');
  for i:=-10 to n do begin
    write(arrey_1[i]);
    if i<=(n-1) then write(',');//красивое оформление массива
  end; 
  write(']');
end.