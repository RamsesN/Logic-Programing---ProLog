mother(john, eleanor). – means eleanor is the mother of john
mother(james, eleanor).
father(john, charles).
father(eleanor,magnus).
father(charles,alexander).
father(james,alexander).
male(john).
male(james).
male(charles).
male(magnus).
grandmother(X,Y) :- mother(X,Z), mother(Z,Y).
grandmother(X,Y) :- father(X,Z), mother(Z,Y).

brother(X,Y) :- father(X,Z), father(Y,Z), male(X), male(Z).
brother(X,Y) :- mother(X,Z), mother(Y,Z), male(X), male(Z).