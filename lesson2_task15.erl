-module(lesson2_task15).
-export([replicate/2]).

% Написати функцію-реплікатор всіх елементів вхідного списку
replicate(List, N) when
    is_list(List),
    is_integer(N) andalso N > 0
->
    ok.
