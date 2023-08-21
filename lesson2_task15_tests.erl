-module(lesson2_task15_tests).
-import(lesson2_task15, [replicate/2]).

-include_lib("eunit/include/eunit.hrl").

replicate_test_() ->
    [
        {
            "it should replicate each element 'N' times for a non-empty list",
            [
                ?_assertEqual(
                    [a, a, a, a, b, b, b, b, c, c, c, c],
                    replicate([a, b, c], 4)
                ),
                ?_assertEqual(
                    [a, a, a, b, b, b, c, c, c],
                    replicate([a, b, c], 3)
                ),
                ?_assertEqual(
                    [a, a, b, b, c, c],
                    replicate([a, b, c], 2)
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    replicate([a, b, c, d], 1)
                ),
                ?_assertEqual(
                    [a],
                    replicate([a], 1)
                )
            ]
        },
        {
            "it should replicate an empty list as an empty list",
            [
                ?_assertEqual(
                    [],
                    replicate([], 1)
                ),
                ?_assertEqual(
                    [],
                    replicate([], 2)
                ),
                ?_assertEqual(
                    [],
                    replicate([], 3)
                )
            ]
        }
    ].
