list_min([Item1], Item1) :-
    number(Item1).

list_min([Item1], 99999) :-
    \+ number(Item1).

list_min([Item1|Rest], Item1) :-
    number(Item1),
    list_min(Rest, Min_rest),
    Item1 =< Min_rest.

list_min([Item1|Rest], Ans) :-
    number(Item1),
    list_min(Rest, Ans),
    Item1 >= Ans.

list_min([Item1|Rest], Ans) :-
    \+ number(Item1),
    list_min(Rest, Ans).

delete_min(X, [], []).

delete_min(X, [Element|Tail], List) :-
    Element =< X,
    delete_min(X, Tail, List).
