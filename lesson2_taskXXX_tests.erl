-module(lesson2_taskXXX_tests).
-import(lesson2_taskXXX, [xxx/1]).

-include_lib("eunit/include/eunit.hrl").

xxx_test_() ->
    [
        {
            "it should return atom 'ok'",
            ?_assertEqual(ok, xxx([]))
        }
    ].
