-module(lesson2_task12_tests).
-import(lesson2_task12, [decode_modified/1]).

-include_lib("eunit/include/eunit.hrl").

decode_modified_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, decode_modified([]))
        }
    ].
