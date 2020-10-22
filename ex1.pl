isFaculty(X, Y).
isDepartment(X, Y).

% 1
collaborate(X, Y):- moduleBy(X, Y), module(X, Z).
% 2
enrolled(X, Y);
% 3
commonModule(X, Y) :- enrolled(X, Z), enrolled(Y, Z).
% 4
moduleBy()
% 5
belongs(X, Y) :-
