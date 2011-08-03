father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
child(X,Y):- parent(Y,X).
son(X,Y):- parent(Y,X), male(X).
daughter(X,Y):- parent(Y,X), female(X).
brother(X,Y):- sibling(X, Y), male(X).
sister(X,Y):- sibling(X, Y), female(X).
uncle(X,Y):- parent(Z, Y), sibling(Z, X), male(X).
aunt(X,Y):- parent(Z, Y), sibling(Z, X), female(X).
nephew(X,Y):- sibling(Y, Z), son(X, Z).
niece(X,Y):- sibling(Y, Z), daughter(X, Z).
cousin(X,Y):- parent(Z, X), parent(T, Y), sibling(Z, T).
paternal_grandfather(X,Y):- father(Z, Y), father(X, Z).
maternal_grandfather(X,Y):- mother(Z, Y), father(X, Z).
paternal_grandmother(X,Y):- father(Z, Y), mother(X, Z).
maternal_grandmother(X,Y):- mother(Z, Y), mother(X, Z).
grandfather(X,Y):- parent(Z, Y), father(X, Z).
grandmother(X,Y):- parent(Z, Y), mother(X, Z).
grandchild(X,Y):- parent(Z, X), parent(Y, Z).
ancestor(X,Y):- parent(X, Y) | (parent(Z, Y), ancestor(X, Z)).
