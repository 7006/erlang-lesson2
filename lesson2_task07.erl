-module(lesson2_task07).
-export([flatten/1]).

-import(lesson2_task05, [reverse/1]).

-include_lib("eunit/include/eunit.hrl").

% Вирівняти структуру із вкладеними списками
flatten(List) when is_list(List) ->
    flatten(List, []).

flatten([H | T], Acc) ->
    flatten(H, flatten(T, Acc));
flatten([], Acc) ->
    Acc;
flatten(X, Acc) ->
    [X | Acc].

%
% function calls step by step
%
% example 1
%
% flatten([[[[a]]]], [])
% flatten([[[a]]], flatten([], []))
% flatten([[[a]]], [])
% flatten([[a]], flatten([], []))
% flatten([[a]], [])
% flatten([a], flatten([], []))
% flatten([a], [])
% flatten(a, flatten([], []))
% flatten(a, [])
% [a]
%
% example 2
%
% flatten([a, [b, c], [], d], [])
% flatten(a, flatten([[b, c], [], d], []))
% flatten(a, flatten([b, c], flatten([[], d], [])))
% flatten(a, flatten([b, c], flatten([], flatten([d], []))))
% flatten(a, flatten([b, c], flatten([], flatten(d, flatten([], [])))))
% flatten(a, flatten([b, c], flatten([], flatten(d, []))))
% flatten(a, flatten([b, c], flatten([], [d])))
% flatten(a, flatten([b, c], [d]))
% flatten(a, flatten([b, c], [d]))
% flatten(a, flatten(b, flatten([c], [d])))
% flatten(a, flatten(b, flatten(c, flatten([], [d]))))
% flatten(a, flatten(b, flatten(c, [d])))
% flatten(a, flatten(b, [c, d]))
% flatten(a, [b, c, d])
% [a, b, c, d]
%
