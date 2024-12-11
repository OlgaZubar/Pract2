-module(lesson2_task04).
-export([len/1]).

len([]) -> 0;                      
len([_ | Tail]) -> 1 + len(Tail).  
 