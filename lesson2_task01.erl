-module(lesson2_task01).
-export([last/1]).

% Знайти останній елемент списку
last([]) ->
    false;
last([H]) ->
    H;
last([_ | T]) ->
    last(T).
