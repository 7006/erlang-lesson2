-module(lesson2_task09_tests).
-import(lesson2_task09, [pack/1]).

-include_lib("eunit/include/eunit.hrl").

pack_test_() ->
    [
        {
            "it should pack a non-empty list to a new list in which the groups of duplicates are wrapped in its own lists",
            ?_assertEqual(
                [[a, a, a, a], [b], [c, c], [a, a], [d], [e, e, e, e]],
                pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e])
            )
        },
        {
            "it should pack a non-empty no-duplicates list to a new list in which the elements are wrapped in its own list",
            ?_assertEqual(
                [[a], [b], [c], [a], [d], [e]],
                pack([a, b, c, a, d, e])
            )
        },
        {
            "it should pack an empty list as an empty list",
            ?_assertEqual(
                [],
                pack([])
            )
        }
    ].
