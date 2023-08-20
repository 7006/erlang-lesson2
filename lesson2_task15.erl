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
replicate([H | T], Count, Acc, 0) ->
    replicate(T, Count, Acc, Count);
replicate([H | T], Count, Acc, Current) ->
    replicate([H | T], Count, [H | Acc], Current - 1).

% abc 3
% abc 3 [] 3

% a bc 3 [] 3
% a bc 3 a  2
% a bc 3 aa 1
% a bc 3 aaa 0

% bc 3 aaa 3

% b c 3 aaa 3
% b c 3 baaa 2
% b c 3 bbaaa 1
% b c 3 bbbaaa 0

% c 3 bbbaaa 3
% c 3 cbbbaaa 2
% c 3 ccbbbaaa 1
% c 3 cccbbbaaa 0

% [] 3 cccbbbaaa 3
