prepend(X,L,[X|L]). 

app([],Element,[Element]).
app([H|T],Element,[H|ExtendedTail]):-app(T,Element,ExtendedTail).

hasLength(0, []).
hasLength(Length+1, [H|T]) :- hasLength(Length,T).

remove([Element|T],Element,T).
remove([H|T],Element,[H|Tail]) :- remove(T,Element,Tail).
