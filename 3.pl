min([Item1], Item1).

min([Item1|Rest], Item1) :-
    number(Item1),
    min(Rest, Min_rest),
    Item1 <= Min_rest.

