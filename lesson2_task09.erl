-module(lesson2_task09).
-export([pack/1]).

-import(lesson2_task05, [reverse/1]).

% Запакувати послідовні дублікати у вкладені списки
pack(List) when is_list(List) ->
    pack(List, [], []).

pack([], [], Acc) ->
    reverse(Acc);
pack([H, H | T], Dup, Acc) ->
    pack([H | T], [H | Dup], Acc);
pack([H | T], Dup, Acc) ->
    pack(T, [], [[H | Dup] | Acc]).
