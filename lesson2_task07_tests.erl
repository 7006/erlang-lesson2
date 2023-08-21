-module(lesson2_task07_tests).
-import(lesson2_task07, [flatten/1]).

-include_lib("eunit/include/eunit.hrl").

flatten_test_() ->
    [
        {
            "it should flatten an non-empty list",
            [
                ?_assertEqual(
                    [a, b, c, d, e],
                    flatten([a, [], [b, [c, d], e]])
                ),
                ?_assertEqual(
                    [a, b, c],
                    flatten([a, b, c])
                ),
                ?_assertEqual(
                    [a, b, c],
                    flatten([a, [b, [c]]])
                ),
                ?_assertEqual(
                    [a],
                    flatten([[[a]]])
                )
            ]
        },
        {
            "it should flaten an empty list as empty list",
            ?_assertEqual(
                [],
                flatten([])
            )
        }
    ].
