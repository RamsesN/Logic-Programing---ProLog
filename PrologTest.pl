mother(john, eleanor).

mother(eleanor,anna).

father(john, charles).

father(eleanor,magnus).

father(charles,james).

father(james,alexander).

 

parent(X,Y) :- father(X,Y).

parent(X,Y) :- mother(X,Y).

 

gp(X,Y) :- parent(X,Z), parent(Z,Y).