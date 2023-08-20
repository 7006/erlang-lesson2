-module(lesson2_task15).
-export([replicate/2]).

-import(lesson2_task05, [reverse/1]).

% Написати функцію-реплікатор всіх елементів вхідного списку
replicate(List, Count) when
    is_list(List),
    is_integer(Count) andalso Count > 0
->
    replicate(List, Count, [], Count).

replicate([], Count, Acc, Count) ->
    reverse(Acc);
replicate([_ | T], Count, Acc, 0) ->
    replicate(T, Count, Acc, Count);
replicate([H | T], Count, Acc, Current) ->
    replicate([H | T], Count, [H | Acc], Current - 1).
