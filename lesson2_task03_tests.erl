-module(lesson2_task03_tests).
-import(lesson2_task03, [element_at/2]).

-include_lib("eunit/include/eunit.hrl").

element_at_test_() ->
    [
        {
            "it should reject a non integer value for the 'Index' argument",
            [
                ?_assertError(function_clause, element_at([a], first)),
                ?_assertError(function_clause, element_at([], first))
            ]
        },
        {
            "it should reject a negative integer value for the 'Index' argument",
            [
                ?_assertError(function_clause, element_at([a], -1)),
                ?_assertError(function_clause, element_at([], -1))
            ]
        },
        {
            "it should reject 0 for the 'Index' argument",
            [
                ?_assertError(function_clause, element_at([a], 0)),
                ?_assertError(function_clause, element_at([], 0))
            ]
        },
        {
            "it should get the 1st element for the one-element list",
            ?_assertEqual(a, element_at([a], 1))
        },
        {
            "it should get the element at the given index",
            [
                ?_assertEqual(d, element_at([a, b, c, d, e, f], 4)),
                ?_assertEqual(e, element_at([a, b, c, d, e, f], 5)),
                ?_assertEqual(f, element_at([a, b, c, d, e, f], 6)),
                ?_assertEqual(a, element_at([a, b, c, d, e, f], 1))
            ]
        },
        {
            "it should get 'undefined' when the element is not found at the given index",
            [
                ?_assertEqual(undefined, element_at([a, b, c, d, e, f], 10)),
                ?_assertEqual(undefined, element_at([a, b, c, d, e, f], 7))
            ]
        },
        {
            "it should get 'undefined' for an empty list",
            [
                ?_assertEqual(undefined, element_at([], 1)),
                ?_assertEqual(undefined, element_at([], 2)),
                ?_assertEqual(undefined, element_at([], 10))
            ]
        }
    ].
