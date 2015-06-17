program colory;
uses crt;

procedure draw(startSize: integer);
var size, i, x, y:integer;
c:byte;
begin
c:=4;

    for i := 1 to startSize div 2 do begin
        
        size:= startSize - i;
    
        textbackground(c);
        y:=i;
        for x:=i to size do begin
            gotoxy(x,y);
            write(' '); 
        end;
        delay(1000);
         
        textbackground(6);
        x:= size;
        for y:= i + 1 to size do begin
           gotoxy(x,y);
           write(' ');
        end;
        delay(1000);
         
        textbackground(9);
        y:=size;
        for x:=size - 1 downto i do begin
            gotoxy(x,y);
            write(' ');
        end;
        delay(1000);
          
        x:=i;
        for y:=size - 1 downto i + 1 do begin
            gotoxy(x,y);
            write(' ');
        end;
        delay(1000);
    end;
 
end;




begin
  clrscr;
  draw(22);
  readln();
end.
