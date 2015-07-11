program snake;
uses CRT;

const WIDTH = 20;
const HEIGHT = 20;

var snakeX, snakeY:integer;
    dx, dy:integer;

procedure move();
var  field:array [1..WIDTH, 1..HEIGHT] of integer;
begin
    snakeY:=snakeY+dy;
    snakeX:=snakeX+dx;
    gotoXY(snakeX,snakeY);
    textbackground(2);
    write(' ');
end;

procedure checkKeys();
var key:char;
begin
if (keypressed()) then begin
      key:=readkey;
      if (key = #77) then begin // pravo
          dx := 1;
          dy := 0;
      end;

      if (key = #72) then begin  // vverh

          dx := 0;
          dy := -1;
      end;

      if (key = #75) then begin //  levo
          dx := -1;
          dy := 0;
      end;

      if (key = #80) then begin  // vniz
          dx := 0;
          dy := 1;
      end;
  end;
end;

procedure drawField();
var i,j:integer;
Begin
 textbackground(4);
 for i:=1 to WIDTH+1 do begin
   gotoXY(i,1);
   write(' ');
 end;

 i:=21;
 for j:=1 to HEIGHT+1 do begin
   gotoXY(i,j);
   write(' ');
 end;

 for i:=WIDTH+1 downto 1 do begin
   gotoXY(i,j);
   write(' ');
 end;

 for j:=HEIGHT+1 downto 1 do begin
   gotoXY(i,j);
   write(' ');
 end;

End;

procedure mainLoop();
var iter: integer;
begin

    dx:=0;
    dy:=1;
    snakeX:=5;
    snakeY:=5;

    drawField();

    iter := 0;
    repeat
        move();
        delay(200);

        checkKeys();

        iter := iter + 1;

    until(false);

end;






begin
 clrscr();
 mainLoop();
 readln();
end.