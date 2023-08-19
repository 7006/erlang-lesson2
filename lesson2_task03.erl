-module(lesson2_task03).
-export([element_at/2]).

% Знайти N-й елемент списку
element_at(List, Index) when
    is_list(List),
    is_integer(Index) andalso Index > 0
->
    element_at_(List, Index).

element_at_([], _) ->
    undefined;
element_at_([H | _], 1) ->
    H;
element_at_([_ | T], Index) ->
    element_at_(T, Index - 1).
