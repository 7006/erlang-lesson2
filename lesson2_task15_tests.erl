-module(lesson2_task15_tests).
-import(lesson2_task15, [replicate/1]).

-include_lib("eunit/include/eunit.hrl").

replicate_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, replicate([]))
        }
    ].
