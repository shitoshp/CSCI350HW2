%if either of list is null, common is null
common_unique_elements([], _, []).

common_unique_elements(_, [], []).

%if new element of L1 is in L2, then it is in output list
common_unique_elements([Head|Tail], L2, [Head|Tail1]) :-
    member(Head, L2),
    common_unique_elements(Tail, L2, Tail1).

% if first element if L1 is not in L2, then the output list remains as
% it is
common_unique_elements([Head|Tail], L2, Tail1) :-
    \+ member(Head, L2),
    common_unique_elements(Tail, L2, Tail1).


