-module(lesson2_task09_tests).
-import(lesson2_task09, [pack/1]).

-include_lib("eunit/include/eunit.hrl").

pack_test_() ->
    [
        {
            "it should wrap in a new list consecutive duplicate elements in the non-empty list",
            ?_assertEqual(
                [[a, a, a, a], [b], [c, c], [a, a], [d], [e, e, e, e]],
                pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e])
            )
        },
        {
            "it should wrap in a new list elements in the non-empty list",
            ?_assertEqual(
                [[a], [b], [c], [a], [d], [e]],
                pack([a, b, c, a, d, e])
            )
        },
        {
            "it should return an empty list when you pass an empty list",
            ?_assertEqual(
                [],
                pack([])
            )
        }
    ].
