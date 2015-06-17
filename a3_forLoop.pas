var a, n: integer;
          b:integer;
begin
  writeln('vvedite cislo n');
  readln(n);
  for a:=1 to n do begin
    for b:=1 to a do begin
      write(a);
    end;
    writeln();
  end;
  readln();
end.
