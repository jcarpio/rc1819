
% longitud(Lista, Longitud).
% es cierto cuando Longitud unifica con 
% el número de elementos de Lista

longitud([], 0).

% longitud(n-1, R) -> longitud(n, R2)
longitud([_|Resto], R2):- longitud(Resto, R), R2 is R+1.  