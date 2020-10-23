% 1
moduleBy(cs3050, logicDepartment).
moduleBy(cs3050, reasoningDepartment).
moduleBy(cs3050, prologDepartment).
moduleBy(cs3099, machineLearningDepartment).
moduleBy(mt2501, linearDepartment).
moduleBy(mt2501, appliedDepartment).
% 2
enrolled(scott, cs3050).
enrolled(scott, cs3099).
enrolled(scott, mt3501).
enrolled(jemma, cs3050).
enrolled(jackson, mt3508).
% 3
commonModule(X, Y):- enrolled(X, Z), enrolled(Y, Z).
% 4
school(logicDepartment, computerScience).
school(reasoningDepartment, computerScience).
school(prologDepartment, computerScience).
school(machineLearningDepartment, computerScience).
school(linearDepartment, mathematics).
school(appliedDepartment, mathematics).
schoolModule(X, Y):- moduleBy(X, Z), school(Z, Y).
% 5
faculty(computerScience, science).
faculty(mathematics, science).
belongsTo(X, Y) :- moduleBy(X, Y); school(X, Y); faculty(X, Y); moduleBy(X, Z), school(Z, Y); school(X, Z), faculty(Z, Y); moduleBy(X, Z), school(Z, Q), faculty(Q, Y).
% 6
studentOf(X, Y) :- enrolled(X, Y); enrolled(X, Z), belongsTo(Z, Y).
