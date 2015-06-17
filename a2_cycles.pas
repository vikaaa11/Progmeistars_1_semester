Program HELLO0_WORLD;
Var i, k, u: Integer;
Begin

i := 1;
k := 1;

repeat
	writeln(i);
    
    
u:= i+ k;
i:=k;
k:=u;

until i > 150;

End.
