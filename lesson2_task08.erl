-module(lesson2_task08).
-export([compress/1]).

-import(lesson2_task05, [reverse/1]).

% Видалити послідовні дублікати
compress(List) ->
    compress(List, []).

compress([], Acc) ->
    reverse(Acc);
compress([H, H | T], Acc) ->
    compress([H | T], Acc);
compress([H | T], Acc) ->
    compress(T, [H | Acc]).
