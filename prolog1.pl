% Question 1 Answer:

exciting(X):- happy(X).
happy(X):- solvent(X), smart(X).
smart(X):- litterate(X).
solvent(X):- wealthy(X).
litterate(john).
wealthy(john).

% Question 2 Query Outputs:

%?- X = 1 + 2 * 3.
%X = 1 + 2 * 3
%Yes (0.00s cpu)
%?- X is 7.
%X = 7
%Yes (0.00s cpu)
%?- X = 1 + 2, Y is X.
%X = 1 + 2
%Y = 3
%Yes (0.00s cpu)
%?- X = Y + 1.
%X = Y + 1
%Y = Y
%Yes (0.00s cpu)
%?- X is Y + 1.
%Abort
%?- [1, 2, 3, 4] = [First|Rest].
%First = 1
%Rest = [2, 3, 4]
%Yes (0.00s cpu)
%?- member(X, [X|Rest]).
%X = X
%Rest = Rest
%Yes (0.00s cpu, solution 1, maybe more)
%X = X
%Rest = [X|_257]
%Yes (0.00s cpu, solution 2, maybe more)
%X = X
%Rest = [_256, X|_259]
%Yes (0.00s cpu, solution 3, maybe more)
% ...