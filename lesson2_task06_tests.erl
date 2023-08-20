-module(lesson2_task06_tests).
-import(lesson2_task06, [is_palindrome/1]).

-include_lib("eunit/include/eunit.hrl").

is_palindrome_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, is_palindrome([]))
        }
    ].
