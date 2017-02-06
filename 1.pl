sum-up-numbers-simple(L, [item]) :- length(L,1).
sum-up-numbers-simple([item1,item2 | rest], sum) :-
    sum-up-numbers-simple(item1+item2|rest).
