-module(lesson2_task09_tests).
-import(lesson2_task09, [pack/1]).

-include_lib("eunit/include/eunit.hrl").

pack_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, pack([]))
        }
    ].
