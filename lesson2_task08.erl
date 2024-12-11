-module(lesson2_task08).
-export([compress/1]).

compress(List) -> 
    reverse(compress(List, undefined, [])).

compress([], _, Result) -> Result;

compress([H | T], H, Result) -> 
    compress(T, H, Result);

compress([H | T], _, Result) -> 
    compress(T, H, [H | Result]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]).
