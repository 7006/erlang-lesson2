-module(lesson2_task05_tests).
-import(lesson2_task05, [reverse/1]).

-include_lib("eunit/include/eunit.hrl").

reverse_test_() ->
    [
        {
            "it should reject non list value for a 'List' argument",
            [
                ?_assertError(function_clause, reverse(0)),
                ?_assertError(function_clause, reverse({}))
            ]
        },
        {
            "it should reverse a non empty list",
            [
                ?_assertEqual([3, 2, 1], reverse([1, 2, 3])),
                ?_assertEqual([2, 1], reverse([1, 2])),
                ?_assertEqual([1], reverse([1]))
            ]
        },
        {
            "it should return an empty list after reversing an empty list",
            ?_assertEqual([], reverse([]))
        }
    ].
