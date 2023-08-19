-module(lesson2_task04_tests).
-import(lesson2_task04, [len/1]).

-include_lib("eunit/include/eunit.hrl").

len_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, len([]))
        }
    ].
