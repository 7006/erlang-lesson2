-module(lesson2_task11).
-export([encode_modified/1]).

-import(lesson2_task05, [reverse/1]).

% Закодувати список за допомогою модифікованого алгоритму RLE
encode_modified(List) when is_list(List) ->
    encode_modified(List, 0, []).

encode_modified([], 0, Acc) ->
    reverse(Acc);
encode_modified([H, H | T], Count, Acc) ->
    encode_modified([H | T], Count + 1, Acc);
encode_modified([H | T], 0, Acc) ->
    encode_modified(T, 0, [H | Acc]);
encode_modified([H | T], Count, Acc) ->
    encode_modified(T, 0, [{Count + 1, H} | Acc]).
