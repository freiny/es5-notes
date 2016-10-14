-module(sum).
-export([init/0]).

init() ->
	io:format("~p~n", [sum([1,2,3,4,5])]).

sum([]) -> 0;
sum([H|Rest]) -> H + sum(Rest).
