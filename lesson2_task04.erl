-module(lesson2_task04).
-export([len/1]).

% Порахувати кількість елементів списку
len(List) when is_list(List) ->
    len(List, 0).

len([], Acc) ->
    Acc;
len([_ | T], Acc) ->
    len(T, Acc + 1).
