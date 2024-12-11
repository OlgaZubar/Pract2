-module(lesson2_task07).
-export([flatten/1]).

flatten(List) -> 
    lists:reverse(flatten(List, [])).

flatten([], Acc) -> Acc;

flatten([Head | Tail], Acc) when is_list(Head) -> 
    flatten(Tail, flatten(Head, Acc));

flatten([Head | Tail], Acc) -> 
    flatten(Tail, [Head | Acc]).
