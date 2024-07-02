64 34 25 12 22 11 90 create arr , , , , , , ,

: bubble-sort
    begin
        false swap
        arr 7 1 do
            arr i cells + @
            arr i 1+ cells + @ >
            if
                arr i cells + @
                arr i 1+ cells + @
                swap
                arr i 1+ cells + !
                arr i cells + !
                true
            then
        loop
    until ;

bubble-sort
arr 7 0 do
    arr i cells + @ .
loop
