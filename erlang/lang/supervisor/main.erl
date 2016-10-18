-module(main).
-export([init/0]).

init() ->
	io:format("~p ~p ~n", ["SUPERVISOR", ?FUNCTION_NAME]).
