Program HELLO0_WORLD;
Var a, b, c: Integer;
    D: Real;
    x1, x2: Real;
Begin
	writeln('Эта программа считает корни квадратного уравнения');
    writeln('ax^2 + bx + c = 0');
    write('Введите а = ');
    Readln(a);
    write('Введите b = ');
    Readln(b);
    write('Введите c = ');
	Readln(c);
    
    writeln(a, 'x^2 + ', b, 'x', ' + ', c, ' = 0');
    
    D := b*b - 4*a*c;
    
    Writeln('D = ', D:5:2);
    
    x1 := (-b + sqrt(D)) / (2*a);
    x2 := (-b - sqrt(D)) / (2*a);
    
    Writeln('x1, x2 = ', x1:5:5, ' ', x2:5:5);

End.

{ 
    ax^2 + bx + c = 0
    
    D = b^2 - 4ac
    
    x1 = ?
    x2 = ?
}
