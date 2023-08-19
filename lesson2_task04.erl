-module(lesson2_task04).
-export([len/1]).

% Порахувати кількість елементів списку
len(List) when is_list(List) ->
    len_(List, 0).

len_([], Acc) ->
    Acc;
len_([_ | T], Acc) ->
    len_(T, 1 + Acc).
