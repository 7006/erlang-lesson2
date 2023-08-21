-module(lesson2_task15).
-export([replicate/2]).

-import(lesson2_task05, [reverse/1]).

% Написати функцію-реплікатор всіх елементів вхідного списку
replicate(List, N) when
    is_list(List),
    is_integer(N) andalso N > 0
->
    replicate(List, [], N, 0).

replicate([], Acc, _, _) ->
    reverse(Acc);
replicate([_ | T], Acc, N, N) ->
    replicate(T, Acc, N, 0);
replicate([H | T], Acc, N, I) ->
    replicate([H | T], [H | Acc], N, I + 1).
