-module(lesson2_task02_tests).
-import(lesson2_task02, [but_last/1]).

-include_lib("eunit/include/eunit.hrl").

but_last_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, but_last([]))
        }
    ].
