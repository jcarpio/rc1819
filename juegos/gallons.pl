% State Problem

% From 5 and 3 gallons jugs, how we can measure 4 gallons?
%
% state(Gallons5bottle, Gallons3bottle)
% 

% initial state
% state(0,0)

% final state
% state(4, _)


% Movements

% mov(Name, StateBefore, StateAfter)
%
% 1. Fill 5 gallons bottle
% 2. Fill 3 gallons bottle
% 3. Empty 5 
% 4. Empty 3 
% 5. Put 3 in 5
% 6. Put 5 in 3

% 1. Fill 5 gallons bottle
mov(fill5, state(_, G3), state(5, G3)).

% 2. Fill 3 gallons bottle
mov(fill3, state(G5,_), state(G5,3)).

% 3. Empty 5 
mov(empty5, state(_, G3), state(0, G3)).

% 4. Empty 3 
mov(empty3, state(G5,_), state(G5,0)).

% 5. Put 3 in 5
% Option 1: G3 + G5 =< 5
mov(put3in5, state(G5, G3), state(GT, 0)):- 
  GT is G3 + G5, GT =< 5.
  
% Option 2: G3 + G5 > 5  
mov(put3in5, state(G5, G3), state(5, G3N)):-
  GT is G3 + G5, GT > 5, G3N is GT - 5.

% 6. Put 5 in 3
% Option 1: G3 + G5 =< 3
mov(put5in3, state(G5, G3), state(0, GT)):- 
  GT is G3 + G5, GT =< 3.
  
% Option 2: G3 + G5 > 3 
mov(put5in3, state(G5, G3), state(G5N, 3)):- 
  GT is G3 + G5, GT > 3, G5N is GT - 3.
  
% Creating the path to the solution

% path(+Intial, +Final, +Visited, -Path)
% it is true if Path unify with the list of 
% movements needed to go from Intial State
% to Final State without repeating states in
% Visited states.


path(IniState, IniState, _, []).  

path(Ini, Final, Visited, [Name|Path]):-
  mov(Name, Ini, Temp),
  \+ member(Temp, Visited),
  path(Temp, Final, [Temp|Visited], Path).
