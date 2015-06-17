Program ewualation;
var A, B: Real;
    D: rEAL;
    x1, x2: Real;
    y1, y2: Real;
    
Begin
    Writeln(' eta programma redaet urovnenie x+y= A, x*y= B');
    Writeln(' Vvedite ciclo A');
    Readln(A);
    Writeln('Vvedite cislo b');
    Readln(B);

    D:= A*A - 4 * B;
    If (D >= 0) THEN BEGIN
        x1:= (A+sqrt(D))/ 2;
        x2:= (A-sqrt(D))/ 2;
    End
    Else Begin
        Writeln('d otricatelnij !!! does not compute');
        halt();
    End;

    Writeln(' x1 =', x1:4:4);
    Writeln(' x2=' , x2:4:4);
  
    y1:= A - x1;
    y2:= A - x2;
    writeln('rezultat x1=', x1:4:4, ' y1=', y1:4:4);
    writeln('rezultat x2=', x2:4:4, ' y2=', y2:4:4);
End.
