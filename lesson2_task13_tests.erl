-module(lesson2_task13_tests).
-import(lesson2_task13, [decode/1]).

-include_lib("eunit/include/eunit.hrl").

decode_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, decode([]))
        }
    ].
