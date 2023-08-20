-module(lesson2_task08_tests).
-import(lesson2_task08, [compress/1]).

-include_lib("eunit/include/eunit.hrl").

compress_test_() ->
    [
        {
            "it should remove consequential duplicate elements from a non-empty list",
            [
                ?_assertEqual(
                    [a, b, c, a, d, e],
                    compress([a, a, a, a, b, c, c, a, d, e, e, e, e])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    compress([a, b, c, c, d])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    compress([a, a, b, c, d])
                ),
                ?_assertEqual(
                    [a, b, c, d],
                    compress([a, b, c, d, d])
                )
            ]
        },
        {
            "it should return the same list for a non-empty list with unique elements",
            [
                ?_assertEqual(
                    [a, b, c, d],
                    compress([a, b, c, d])
                ),
                ?_assertEqual(
                    [a, b],
                    compress([a, b])
                ),
                ?_assertEqual(
                    [a],
                    compress([a])
                )
            ]
        },
        {
            "it should return an empty list when you pass an empty list",
            ?_assertEqual([], compress([]))
        }
    ].
