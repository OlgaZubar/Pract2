-module(lesson2_task03).
-export([element_at/2]).

element_at([X | _], 1) -> X;                         
element_at([_ | Tail], N) when N > 1 -> element_at(Tail, N - 1); 
element_at(_, _) -> undefined.                        
 