sum_up_numbers_simple([], 0).
sum_up_numbers_simple([Item1|Rest], Sum) :-
    sum_up_numbers_simple(Rest, Rest_sum),
    Sum is Item1 + Rest_sum.
