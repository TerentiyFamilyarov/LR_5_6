program z5;
var a,sum1,sum2:int64; arrey_1:array[1..10] of int64; arrey_2:array[1..10] of int64;
begin
  for a:=1 to 10 do begin 
  arrey_1[a]:=random(-10..10);
  arrey_2[a]:=random(-10..10);
  end;
  writeln(arrey_1,' () ',arrey_2);
for a:=1 to 10 do begin
  sum1+=arrey_1[a];
  sum2+=arrey_2[a];
end;
writeln(sum1);
writeln(sum2);
  if sum1<sum2 then begin
    for a:=1 to 10 do begin
    arrey_1[a]*=10;
    end;
    writeln(arrey_1);
    end
  else begin 
    for a:=1 to 10 do begin
  arrey_2[a]*=10;
  end;
  writeln(arrey_2);
  end;
end.