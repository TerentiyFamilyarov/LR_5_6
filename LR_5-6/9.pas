program z9;// удаление первого положительного эл-та массива,наименьшего отрицательного эл-та 
var i,a,min,plus1,n,j:int64;arrey_1:array[-10..10] of int64;
begin
  n:=10;
  for a:=-10 to 10 do begin
  arrey_1[a]:=random(-10..10);
  end;
  writeln(arrey_1);
  i:=-10;
  min:=arrey_1[-10];
  while i<=10 do begin
    if min>arrey_1[i] then min:=arrey_1[i];
    i+=1;
  end;
  writeln(min);
  i:=-10;
  while i <= n do 
   if min=arrey_1[i] then begin 
    for j:=i to n-1 do
      arrey_1[j]:=arrey_1[j+1]; // то всё переносим на 1 элемент налево
    n:=n-1;// - чтобы в конце не было нулей
    break;
    end
  else i+=1;
  i:=-10;
  while i<=10 do begin
    if arrey_1[i]>0 then begin plus1:=arrey_1[i];break;end;
    i+=1;
  end;
  writeln(plus1,'plus');
  i:=-10;
  while i<=n do 
  if plus1=arrey_1[i] then begin
    for j:=i to n-1 do
      arrey_1[j]:=arrey_1[j+1];
    n-=1;
    break;
    end
  else i+=1;
  i:=-10;
 write('[');
  for a:=-10 to n do begin
    write(arrey_1[a]);
    if a<=(n-1) then write(',');
  end; 
  write(']');
end.