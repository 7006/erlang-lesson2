-module(lesson2_task05).
-export([reverse/1]).

% Перевернути список
reverse(List) when is_list(List) ->
    reverse_(List, []).

reverse_([], Reversed) ->
    Reversed;
reverse_([H | T], Reversed) ->
    reverse_(T, [H | Reversed]).
