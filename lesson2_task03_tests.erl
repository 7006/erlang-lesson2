-module(lesson2_task03_tests).
-import(lesson2_task03, [element_at/2]).

-include_lib("eunit/include/eunit.hrl").

element_at_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, element_at([], 1))
        }
    ].
