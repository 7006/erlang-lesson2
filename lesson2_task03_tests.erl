-module(lesson2_task03_tests).
-import(lesson2_task03, [element_at/2]).

-include_lib("eunit/include/eunit.hrl").

element_at_test_() ->
    [
        {
            "it should get the element at the given index",
            [
                ?_assertEqual(d, element_at([a, b, c, d, e, f], 4)),
                ?_assertEqual(e, element_at([a, b, c, d, e, f], 5)),
                ?_assertEqual(a, element_at([a, b, c, d, e, f], 1))
            ]
        },
        {
            "it should return the atom 'undefined' when the element is not found at the given index",
            [
                ?_assertEqual(undefined, element_at([a, b, c, d, e, f], 10)),
                ?_assertEqual(undefined, element_at([a, b, c, d, e, f], 7))
            ]
        },
        {
            "it should return the atom 'undefined' for an empty list",
            [
                ?_assertEqual(undefined, element_at([], 1)),
                ?_assertEqual(undefined, element_at([], 2)),
                ?_assertEqual(undefined, element_at([], 10))
            ]
        }
    ].
