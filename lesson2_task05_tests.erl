-module(lesson2_task05_tests).
-import(lesson2_task05, [reverse/1]).

-include_lib("eunit/include/eunit.hrl").

reverse_test_() ->
    [
        {
            "it should reverse a non-empty list",
            [
                ?_assertEqual(
                    [3, 2, 1],
                    reverse([1, 2, 3])
                ),
                ?_assertEqual(
                    [2, 1],
                    reverse([1, 2])
                ),
                ?_assertEqual(
                    [1],
                    reverse([1])
                )
            ]
        },
        {
            "it should reverse an empty list as an empty list",
            ?_assertEqual(
                [],
                reverse([])
            )
        }
    ].
