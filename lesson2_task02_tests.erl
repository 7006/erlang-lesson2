-module(lesson2_task02_tests).
-import(lesson2_task02, [but_last/1]).

-include_lib("eunit/include/eunit.hrl").

but_last_test_() ->
    [
        {
            "it should return atom 'false' for an empty list",
            ?_assertEqual(false, but_last([]))
        },
        {
            "it should return atom 'false' for the one-element list",
            ?_assertEqual(false, but_last([a]))
        },
        {
            "it should return 2 last elements for the two-element list",
            ?_assertEqual({a, b}, but_last([a, b]))
        },
        {
            "it should return 2 last elements for the three-element list",
            ?_assertEqual({b, c}, but_last([a, b, c]))
        },
        {
            "it should return 2 last elements for a non empty list",
            ?_assertEqual({e, f}, but_last([a, b, c, d, e, f]))
        }
    ].
