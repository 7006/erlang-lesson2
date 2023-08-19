-module(lesson2_task03).
-export([element_at/2]).

% Знайти N-й елемент списку
element_at([], _) ->
    undefined;
element_at([H | _], 1) ->
    H;
element_at([_ | T], Index) ->
    element_at(T, Index - 1).
