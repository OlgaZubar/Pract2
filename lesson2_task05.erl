-module(lesson2_task05).
-export([reverse/1]).

reverse(List) -> reverse(List, []).  

reverse([], Acc) -> Acc;              
reverse([Head | Tail], Acc) ->        
    reverse(Tail, [Head | Acc]).
