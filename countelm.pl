count([], _, 0).
count([Head|Tail], Elm, Count) :- Head == Elm, count(Tail, Elm, RCount), Count is 1 + RCount | not(Head == Elm), count(Tail, Elm, RCount), Count is RCount.

remove_occurences([], _, []).
remove_occurences([Head|Tail], Elm, Result) :- Head == Elm, remove_occurences(Tail, Elm, Result) | not(Head == Elm), append([Head], Y, Result), remove_occurences(Tail, Elm, Y).

countelm([], []).
countelm([Head|Tail], Result) :- append([Head], [Count], Y), count([Head|Tail], Head, Count), remove_occurences(Tail, Head, X), countelm(X, RestResult), append([Y],RestResult,Result).
