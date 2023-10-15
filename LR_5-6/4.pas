program z4;
var a,i,n,j:int64; arrey_1:array[1..30] of int64;
begin
  n:=30;
  for a:=1 to 30 do begin 
  arrey_1[a]:=random(-99..67);
  end;
  writeln(arrey_1);
  i:=1;
  while i <= n do 
    if (arrey_1[i] mod 2 <> 0) and (i<=n) then begin // если число нечет
       for j:=i to n-1 do
         arrey_1[j]:=arrey_1[j+1]; // то всё переносим на 1 элемент налево
       n:=n-1; // - чтобы в конце не было нулей
    end
 else i+=1;
 write('[');
  for a:=1 to n do begin
    write(arrey_1[a]);
    if a<=(n-1) then write(',');
  end; 
  write(']');
end.