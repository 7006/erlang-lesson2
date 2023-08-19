-module(lesson2_task01_tests).
-import(lesson2_task01, [last/1]).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [
        {
            "it should return atom 'false' for an empty list",
            ?_assertEqual(false, last([]))
        },
        {
            "it should return last element for the one-element list",
            ?_assertEqual(1, last([1]))
        },
        {
            "it should return last element for the two-element list",
            ?_assertEqual(2, last([1, 2]))
        },
        {
            "it should return last element for the three-element list",
            ?_assertEqual(8, last([10, 9, 8]))
        }
    ].
