-module(lesson2_task01).
-export([last/1]).

% Знайти останній елемент списку
last([]) ->
    undefined;
last([H]) ->
    H;
last([_ | T]) ->
    last(T).
