bubble_sort([], []).
bubble_sort([X], [X]).
bubble_sort([X,Y|T], [X|Sorted]) :-
    X > Y,
    bubble_sort([Y|T], Sorted).
bubble_sort([X,Y|T], [Y|Sorted]) :-
    X =< Y,
    bubble_sort([X|T], Sorted).

% Example usage:
% bubble_sort([64, 34, 25, 12, 22, 11, 90], Sorted).
% write('Sorted array: '), write(Sorted), nl.
