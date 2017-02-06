sum-up-numbers-simple([], 0).
sum-up-numbers-simple([item | rest], sum) :-
    sum-up-numbers-simple(rest, rest_sum),
    sum is item + rest_sum.
