-module(lesson2_task13).
-export([decode/1]).

decode(List) ->
    decode(List, []).

decode([], Acc) ->
    lists:reverse(Acc);
decode([{N, Element} | T], Acc) ->
    decode(T, append_duplicates(N, Element, Acc)).
append_duplicates(0, _Element, Acc) ->
    Acc;
append_duplicates(N, Element, Acc) when N > 0 ->
    append_duplicates(N - 1, Element, [Element | Acc]).
