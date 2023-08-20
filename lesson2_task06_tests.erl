-module(lesson2_task06_tests).
-import(lesson2_task06, [is_palindrome/1]).

-include_lib("eunit/include/eunit.hrl").

is_palindrome_test_() ->
    [
        {
            "it should return 'true' for a palindrome list",
            [
                ?_assertEqual(true, is_palindrome([1, 2, 3, 2, 1])),
                ?_assertEqual(true, is_palindrome([10, 20, 20, 10])),
                ?_assertEqual(true, is_palindrome([r, o, t, o, r])),
                ?_assertEqual(true, is_palindrome([a, b, b, a]))
            ]
        },
        {
            "it should consider an empty list as palindrome",
            ?_assertEqual(true, is_palindrome([]))
        },
        {
            "it should consider a one-element list as palindrome",
            [
                ?_assertEqual(true, is_palindrome([a])),
                ?_assertEqual(true, is_palindrome([0])),
                ?_assertEqual(true, is_palindrome([2]))
            ]
        },
        {
            "it should return 'false' for a non palindrome list",
            [
                ?_assertEqual(false, is_palindrome([1, 2, 3, 4])),
                ?_assertEqual(false, is_palindrome([1, 2, 3, 4, 2, 1])),
                ?_assertEqual(false, is_palindrome([m, o, t, o, r])),
                ?_assertEqual(false, is_palindrome([a, b, o, k, n, o, b, a]))
            ]
        }
    ].
