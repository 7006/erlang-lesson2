-module(lesson2_task01_tests).
-import(lesson2_task01, [last/1]).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [
        {
            "it should return atom 'undefined' for an empty list",
            ?_assertEqual(undefined, last([]))
        },
        {
            "it should return last element for the one-element list",
            ?_assertEqual(a, last([a]))
        },
        {
            "it should return last element for the two-element list",
            ?_assertEqual(b, last([a, b]))
        },
        {
            "it should return last element for a non empty list",
            ?_assertEqual(f, last([a, b, c, d, e, f]))
        }
    ].
