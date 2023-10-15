program z2;
var a,i,k,num,boba,biba,summ:int64; arrey_1:array [1..20] of int64;
begin
  k:=0;
for a:=1 to 20 do begin
  arrey_1[a]:=Random(-22..93);
  end;
  i:=1;
  writeln(arrey_1);
while i<=19 do begin
  if arrey_1[i] mod 2=0 then k+=1;
  i+=2;
  end;
  writeln(k);//kol-vo chetn el_massive na nechet mestax 
  i:=1;
  num:=1;
while i<=20 do begin
  if arrey_1[i] mod 2<>0 then num*=arrey_1[i]; 
  i+=1;
  end;
  writeln(num);//proizvedenie nechet el_massive
read(biba,boba);//ot biba do boba
summ:=0;
while biba<=boba do begin
  summ+=arrey_1[biba];
  biba+=1;
  end;
  write(summ);
end.