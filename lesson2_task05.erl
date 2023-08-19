-module(lesson2_task05).
-export([reverse/1]).

% Перевернути список
reverse(List) when is_list(List) ->
    reverse(List, []).

reverse([], Reversed) ->
    Reversed;
reverse([H | T], Reversed) ->
    reverse(T, [H | Reversed]).
