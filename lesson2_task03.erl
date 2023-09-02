-module(lesson2_task03).
-export([element_at/2]).

% Знайти N-й елемент списку
element_at(List, N) when N > 0 ->
    element_at(List, N, 1).

element_at([], _, _) ->
    undefined;
element_at([H | _], N, N) ->
    H;
element_at([_ | T], N, I) ->
    element_at(T, N, I + 1).
