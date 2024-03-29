% if list is null, sum is 0
sum_up_numbers_general([], 0).

% if first index is a number, and sum of rest of list matches rest_sum, sum is first item + rest_sum
sum_up_numbers_general([Item1|Rest], Sum) :-
    % number check
    number(Item1),
    %this recursive call gets iterated until list is null and uses the logic if null, sum = 0 from above
    sum_up_numbers_general(Rest, Rest_sum),
    Sum is Item1 + Rest_sum.

% if first index is a list, sum of rest of list matches rest_sum, sum of
% first index list matches list_sum, sum is list_sum + rest_sum
sum_up_numbers_general([Item1|Rest], Sum) :-
    % list check
    is_list(Item1),
    %this recursive call gets iterated until list is null and uses the logic if null, sum = 0 from above
    sum_up_numbers_general(Item1, List_sum),
    sum_up_numbers_general(Rest, Rest_sum),
    Sum is List_sum + Rest_sum.



% if first index is not a number or a list, and sum of rest of list
% matches rest_sum, sum is first rest_sum
sum_up_numbers_general([Item1|Rest], Sum) :-
    % number and list check
    \+ number(Item1),
    \+ is_list(Item1),
    sum_up_numbers_general(Rest, Rest_sum),
    Sum is Rest_sum.
