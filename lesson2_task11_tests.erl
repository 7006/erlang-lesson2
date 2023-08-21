-module(lesson2_task11_tests).
-import(lesson2_task11, [encode_modified/1]).

-include_lib("eunit/include/eunit.hrl").

encode_modified_test_() ->
    [
        {
            "it should encode a non-empty list by modified RLE algo",
            [
                ?_assertEqual(
                    [{4, a}, b, {2, c}, {2, a}, d, {4, e}],
                    encode_modified([a, a, a, a, b, c, c, a, a, d, e, e, e, e])
                ),
                ?_assertEqual(
                    [a, b, c],
                    encode_modified([a, b, c])
                ),
                ?_assertEqual(
                    [a],
                    encode_modified([a])
                ),
                ?_assertEqual(
                    [{3, a}],
                    encode_modified([a, a, a])
                )
            ]
        },
        {
            "it should encode an empty list as empty list",
            ?_assertEqual(
                [],
                encode_modified([])
            )
        }
    ].
