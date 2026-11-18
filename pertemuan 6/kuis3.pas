program DeretFibonacci;
uses crt;

var
    n, i: integer;
    t1, t2, nextTerm: longint;
begin
    clrscr;
    write('Input -> Nilai : ');
    readln(n);
    
    t1 := 1;
    t2 := 1;
    
    write('Output -> Deret Fibonacci : ');
    for i := 1 to n do
    begin
        if i = 1 then
            write(t1, ' ')
        else if i = 2 then
            write(t2, ' ')
        else
        begin
            nextTerm := t1 + t2;
            t1 := t2;
            t2 := nextTerm;
            write(nextTerm, ' ');
        end;
    end;
    
    readln;
end.