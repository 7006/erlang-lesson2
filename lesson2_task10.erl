-module(lesson2_task10).
-export([encode/1]).

-import(lesson2_task05, [reverse/1]).

% Закодувати список за допомогою алгоритму RLE
encode(List) when is_list(List) ->
    encode(List, 0, []).

encode([], 0, Acc) ->
    reverse(Acc);
encode([H, H | T], Count, Acc) ->
    encode([H | T], Count + 1, Acc);
encode([H | T], Count, Acc) ->
    encode(T, 0, [{Count + 1, H} | Acc]).
