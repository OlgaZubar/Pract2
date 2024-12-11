-module(lesson2_task15).
-export([replicate/2]).

replicate(List, N) ->
    replicate(List, N, []).

replicate([], _, Acc) ->
    lists:reverse(Acc);
replicate([H | T], N, Acc) ->
    replicate(T, N, replicate_element(H, N, Acc)).

replicate_element(_, 0, Acc) ->
    Acc;
replicate_element(Element, N, Acc) when N > 0 ->
    replicate_element(Element, N - 1, [Element | Acc]).
