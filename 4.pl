common_unique_elements([], _, []).

common_unique_elements(_, [], []).

common_unique_elements([Head|Tail], L2, [Head|Tail1]) :-
    member(Head, L2),
    \+ member(Head, Tail1),
    common_unique_elements(Tail, L2, Tail1).
