sum-up-numbers-simple([], 0).
sum-up-numbers-simple([Item1|Rest], Sum) :-
    sum-up-numbers-simple(Rest, Rest_sum),
    Sum is Item1 + Rest_sum.
