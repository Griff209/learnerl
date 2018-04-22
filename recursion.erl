-module(recursion).
-export([len/1, duplicate/2, take/2]).

len(L) -> len(L, 0).
len([], Acc) -> 
  Acc;
len([_|T], Acc) -> 
  len(T, Acc+1).

duplicate(N,Term) -> duplicate(N,Term,[]).
duplicate(0, _,List) -> 
  List;
duplicate(N,Term,List) when N > 0 ->
  duplicate(N-1, Term, [Term|List]).

reverse(L) -> reverse(L,[]).
reverse([],Acc) -> 
  Acc;
reverse([H|T],Acc) -> 
  reverse(T,[H|Acc]).

take(N,List) -> reverse(take(N,List,[])).
take(0,_,Acc) -> 
  Acc;
take(_,[],Acc) -> 
  Acc;
take(N,[H|T],Acc) when N > 0 -> 
  take(N-1,T,[H|Acc]).