program z11;
var i,n,count_chet,chet1,j:int64;arrey_1:array[1..25] of int64;
begin
  n:=4;
 for i:=1 to n do
   arrey_1[i]:=random(0..20);
      write('[');
      for i:=1 to n do begin
      if i<=n then write(',');//красивое оформление массива
      write(arrey_1[i]);
      end;
      writeln(']');
 for i:=1 to n do 
   if arrey_1[i] mod 2 = 0 then begin
    count_chet+=1;
    if count_chet=1 then chet1:=i;
   end;
   writeln(count_chet,',',chet1);// кол-во четных эл-тов,первый чет эл-т
   i:=1;
 for i:=n downto chet1+1 do
   arrey_1[i+1]:=arrey_1[i];//добавление числа четных эл-тов
 arrey_1[chet1+1]:=count_chet;
 n+=1;
     write('[');
     for i:=1 to n do begin
     if i<=n then write(',');//красивое оформление массива
     write(arrey_1[i]);
     end;
     write(']');
end.  