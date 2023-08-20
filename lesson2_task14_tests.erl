-module(lesson2_task14_tests).
-import(lesson2_task14, [duplicate/1]).

-include_lib("eunit/include/eunit.hrl").

duplicate_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, duplicate([]))
        }
    ].
