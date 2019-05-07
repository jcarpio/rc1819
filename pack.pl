% P09 (**) Pack consecutive duplicates of list elements into sublists.
%    If a list contains repeated elements they should be placed in separate sublists.
%
%    Example:
%    ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%    X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([], []).

pack([E], [[E]]).

pack([Ca1, Ca1|Resto], [[Ca1|R1]|R] ):- 
  pack([Ca1|Resto], [R1|R]).

pack([Ca1, Ca2|Resto], [[Ca1]|R] ):- Ca1 \= Ca2,
  pack([Ca2|Resto], R).
  
  
% n
% pack([c,a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[c],[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% n-1
% pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% n
% pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% n-1
% pack([a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]