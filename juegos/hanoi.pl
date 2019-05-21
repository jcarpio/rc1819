
% Hanoi
% 
%    |     |     |
%    |     |     |
%    |     |     |
%  ----- ----- -----
%    X     Y     Z

% hanoi(+NumeroDiscos, +X, +Y, +Z, -ListaMov).
% es cierto cuando ListaMov unifica con la lista de movimientos
% necesarios para pasar NumeroDiscos del palo X hasta el palo Z 
% utilizando el palo Y como auxiliar.


% 1. Mover la torre de n-1 discos del palo X al Y usando Z como auxiliar.
% 2. Mover el disco mayor de X a Z.
% 3. Mover la torre de n-1 discos de Y a Z usando X como auxiliar.


hanoi(1, X, _, Z, [pasar(1,X,Z)]).

hanoi(N, X, Y, Z, R2):-
  N2 is N-1,
  hanoi(N2, X, Z, Y, M1),
  hanoi(1, X, Y, Z, M2),
  hanoi(N2, Y, X, Z, M3),
  append(M1, M2, R),
  append(R, M3, R2).
  