-module(lesson2_task04_tests).
-import(lesson2_task04, [len/1]).

-include_lib("eunit/include/eunit.hrl").

len_test_() ->
    [
        {
            "it should reject non list value for the 'List' argument",
            [
                ?_assertError(function_clause, len(0)),
                ?_assertError(function_clause, len({}))
            ]
        },
        {
            "it should return 0 for an empty list",
            ?_assertEqual(0, len([]))
        },
        {
            "it should return the length of a non empty list",
            [
                ?_assertEqual(4, len([a, b, c, d])),
                ?_assertEqual(2, len([a, b])),
                ?_assertEqual(1, len([a]))
            ]
        }
    ].
