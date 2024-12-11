-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) ->
    decode_modified(List, []).

decode_modified([], Acc) ->
    lists:reverse(Acc);
decode_modified([{N, Element} | T], Acc) ->
    decode_modified(T, append_duplicates(N, Element, Acc));
decode_modified([Element | T], Acc) ->
    decode_modified(T, [Element | Acc]).

append_duplicates(0, _Element, Acc) ->
    Acc;
append_duplicates(N, Element, Acc) when N > 0 ->
    append_duplicates(N - 1, Element, [Element | Acc]).
