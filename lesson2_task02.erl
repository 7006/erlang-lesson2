-module(lesson2_task02).
-export([but_last/1]).

% Знайти два останніх елементи списку
but_last([]) ->
    false;
but_last([_]) ->
    false;
but_last([X, Y]) ->
    {X, Y};
but_last([_ | T]) ->
    but_last(T).
