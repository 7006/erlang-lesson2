-module(lesson2_task06_tests).
-import(lesson2_task06, [is_palindrome/1]).

-include_lib("eunit/include/eunit.hrl").

is_palindrome_test_() ->
    [
        {
            "it should return 'true' for a palindrome list",
            [
                ?_assert(is_palindrome([1, 2, 3, 2, 1])),
                ?_assert(is_palindrome([10, 20, 20, 10])),
                ?_assert(is_palindrome([r, o, t, o, r])),
                ?_assert(is_palindrome([a, b, b, a]))
            ]
        },
        {
            "it should consider an empty list as palindrome",
            ?_assert(is_palindrome([]))
        },
        {
            "it should consider a one-element list as palindrome",
            [
                ?_assert(is_palindrome([a])),
                ?_assert(is_palindrome([0])),
                ?_assert(is_palindrome([2]))
            ]
        },
        {
            "it should return 'false' for a non palindrome list",
            [
                ?_assertNot(is_palindrome([1, 2, 3, 4])),
                ?_assertNot(is_palindrome([1, 2, 3, 4, 2, 1])),
                ?_assertNot(is_palindrome([m, o, t, o, r])),
                ?_assertNot(is_palindrome([a, b, o, k, n, o, b, a]))
            ]
        }
    ].
