list_min([Item1], Item1).

list_min([Item1|Rest], Item1) :-
    number(Item1),
    list_min(Rest, Min_rest),
    Item1 =< Min_rest.

list_min([Item1|Rest], Ans) :-
    list_min(Rest, Ans),
    Item1 >= Ans.

