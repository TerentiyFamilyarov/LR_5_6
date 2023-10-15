program z6;
var a,k,n:int64; arrey_1:array[1..99999]of int64;
begin
  k:=0;
  a:=1;
  write('Введите массив; введите -1 чтобы закончить ввод: ');
  repeat
    read(arrey_1[a]);
    a+=1;
    n+=1;
  until arrey_1[a]=-1; 
  for a:=1 to n-2 do
  begin
    if arrey_1[a+1]<arrey_1[a] then begin k:=1;break; end;
  end; 
  if k=0 then write('Массив отсортирован по возрастанию')
  else write('Nope');
end.