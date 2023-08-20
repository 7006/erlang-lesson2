-module(lesson2_task06).
-export([is_palindrome/1]).

-import(lesson2_task05, [reverse/1]).

% Визначити, чи є список паліндромом
is_palindrome(List) when is_list(List) ->
    is_palindrome(List, reverse(List)).

is_palindrome([], []) ->
    true;
is_palindrome([H | T1], [H | T2]) ->
    is_palindrome(T1, T2);
is_palindrome(_, _) ->
    false.
