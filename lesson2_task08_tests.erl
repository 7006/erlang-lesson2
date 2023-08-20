-module(lesson2_task08_tests).
-import(lesson2_task08, [compress/1]).

-include_lib("eunit/include/eunit.hrl").

compress_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, compress([]))
        }
    ].
