% Trees representation
% 1) nil is a tree
% 2) t(L, Left, Right), Left and Right are tress.

% num_nodes(+Tree, -Num)
% it is true if Num unify with the number of
% nodes in Tree.


% Induction
% 1) p(n0)
% 2) p(n-1) -> p(n)
%    p(N):- N2 is N-1, p(N2). 

num_nodes(nil, 0).
num_nodes(t(_, L, R), RT):-
  num_nodes(L, RL),
  num_nodes(R, RR),
  RT is RL + RR + 1. 
   

tree1(t(9,t(5, t(2, nil, nil), t(6, nil, nil)),t(12, t(10, nil, nil), t(14,nil,nil)))).



   
   
   
  
