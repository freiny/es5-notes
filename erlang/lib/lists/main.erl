-module(main).
-export([init/0]).

init() ->
	io:format("~p~n", [lists:reverse([1,2,3,4])]).
