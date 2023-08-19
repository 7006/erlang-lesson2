-module(lesson2_task02).
-export([but_last/1]).

% Знайти два останніх елементи списку
but_last([]) ->
    undefined;
but_last([_]) ->
    undefined;
but_last([X, Y]) ->
    {X, Y};
but_last([_ | T]) ->
    but_last(T).
