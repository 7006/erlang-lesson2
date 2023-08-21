-module(lesson2_task07_tests).
-import(lesson2_task07, [flatten/1]).

-include_lib("eunit/include/eunit.hrl").

flatten_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, flatten([]))
        }
    ].
