-module(lesson2_task05_tests).
-import(lesson2_task05, [reverse/1]).

-include_lib("eunit/include/eunit.hrl").

reverse_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, reverse([]))
        }
    ].
