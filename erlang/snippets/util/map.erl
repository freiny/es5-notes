-module(map).
-export([init/0]).

init() ->

	Dbl = fun(N) -> (N*2) end,
	io:format("~p~n",[map(Dbl,[1,2,3,4])]).

map(Fn, []) -> [];
map(Fn, [H|Rest]) ->
	[Fn(H)|map(Fn,Rest)].
