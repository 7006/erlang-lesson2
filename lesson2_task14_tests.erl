-module(lesson2_task14_tests).
-import(lesson2_task14, [duplicate/1]).

-include_lib("eunit/include/eunit.hrl").

duplicate_test_() ->
    [
        {
            "it should duplicate each element for a non-empty list",
            [
                ?_assertEqual(
                    [a, a, b, b, c, c, c, c, d, d],
                    duplicate([a, b, c, c, d])
                ),
                ?_assertEqual(
                    [a, a, a, a, b, b, c, c, c, c, d, d, d, d],
                    duplicate([a, a, b, c, c, d, d])
                ),
                ?_assertEqual(
                    [a, a],
                    duplicate([a])
                )
            ]
        },
        {
            "it should duplicate an empty list as an empty list",
            ?_assertEqual(
                [],
                duplicate([])
            )
        }
    ].
