-module(lesson2_task09).
-export([pack/1]).

pack(List) -> pack(List, [], []).

pack([], CurrentGroup, Result) -> 
    lists:reverse([CurrentGroup | Result]);

pack([H | T], [H | _] = CurrentGroup, Result) -> 
    pack(T, [H | CurrentGroup], Result);

pack([H | T], CurrentGroup, Result) -> 
    case CurrentGroup of
        [] -> pack(T, [H], Result);
        _ -> pack(T, [H], [CurrentGroup | Result])
    end.
