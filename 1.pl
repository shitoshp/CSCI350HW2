% if list is null, sum is 0
sum_up_numbers_simple([], 0).

% if first index is a number, and sum of rest of list matches rest_sum, sum is first item + rest_sum
sum_up_numbers_simple([Item1|Rest], Sum) :-
    % number check
    number(Item1),
    %this recursive call gets iterated until list is null and uses the logic if null, sum = 0 from above
    sum_up_numbers_simple(Rest, Rest_sum),
    Sum is Item1 + Rest_sum.

% if first index is not a number, and sum of rest of list matches rest_sum, sum is first rest_sum
sum_up_numbers_simple([Item1|Rest], Sum) :-
    % number check
    \+ number(Item1),
    sum_up_numbers_simple(Rest, Rest_sum),
    Sum is Rest_sum.
