-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

duplicate([], Acc) ->
    lists:reverse(Acc);
duplicate([H | T], Acc) ->
    duplicate(T, [H, H | Acc]).
 