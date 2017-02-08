%if only 1 number is list, it is min
list_min([Item1], Item1) :-
    number(Item1).

%if only 1 item in list and not a number, set infinitely high num as min
list_min([Item1], 99999) :-
    \+ number(Item1).

% if first element of list is a number and is less than minimum of rest
% of list, it is minimum
list_min([Item1|Rest], Item1) :-
    number(Item1),
    list_min(Rest, Min_rest),
    Item1 =< Min_rest.

% if first element if list is a number and is greater than minimum of
% rest, keep minimum as it is
list_min([Item1|Rest], Ans) :-
    number(Item1),
    list_min(Rest, Ans),
    Item1 >= Ans.

%if first element of list is not a number, keep minimum as it is
list_min([Item1|Rest], Ans) :-
    \+ number(Item1),
    list_min(Rest, Ans).

%function to give a list by deleting numbers smaller than x
%deleting something from null is null
delete_min(X, [], []) :-
    number(X).

%if first element is a number and less than x, don't include in new list
delete_min(X, [Element|Tail], List) :-
    number(Element),
    Element =< X,
    delete_min(X, Tail, List).

%if first element is greater than x, add it to new list
delete_min(X, [Element|Tail], [Element|List]) :-
    number(Element),
    Element > X,
    delete_min(X, Tail ,List).

%if first element is not a number, don't include in new list
delete_min(X, [Element|Tail], List) :-
    \+ number(Element),
    delete_min(X, Tail, List).

%min_above_min function to give min_above min
%if L1 is null, let n be -1 so it is false for any value of L2
min_above_min([], _, N) :-
    N is -1.

%if L2 is null, N is min of L1
min_above_min(L1, [], N) :-
    list_min(L1, N).

% if min of L2 is L2_min, and Ans is list of all numbers in L1 greater
% than L2_min, N is min of Ans
min_above_min(L1, L2, N) :-
    list_min(L2, L2_min),
    delete_min(L2_min, L1, Ans),
    list_min(Ans, N).





