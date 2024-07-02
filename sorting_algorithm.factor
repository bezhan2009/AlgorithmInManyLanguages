: bubble-sort ( seq -- sorted-seq )
    dup length 1 - [ 2dup nth swap 1 + nth > ] any? while
    dup length 1 - [ [ 2dup nth swap 1 + nth > ] [ 2dup nth 2dup 1 + nth swap 1 + set-nth swap set-nth ] when ] each
    [ ] [ drop ] unless ;

{ 64 34 25 12 22 11 90 } bubble-sort .
