-module(lesson2_task11).
-export([encode_modified/1]).

-import(lesson2_task05, [reverse/1]).

% Закодувати список за допомогою модифікованого алгоритму RLE
encode_modified(List) when is_list(List) ->
    encode_modified(List, []).

encode_modified([], Acc) ->
    reverse(Acc);
encode_modified([H | T], [{Count, H} | R]) ->
    encode_modified(T, [{Count + 1, H} | R]);
encode_modified([H, H | T], Acc) ->
    encode_modified([H | T], [{1, H} | Acc]);
encode_modified([H | T], Acc) ->
    encode_modified(T, [H | Acc]).
