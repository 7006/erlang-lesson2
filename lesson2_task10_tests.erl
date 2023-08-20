-module(lesson2_task10_tests).
-import(lesson2_task10, [encode/1]).

-include_lib("eunit/include/eunit.hrl").

encode_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, encode([]))
        }
    ].
