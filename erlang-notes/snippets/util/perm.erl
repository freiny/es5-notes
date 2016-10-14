-module(perm).
-export([init/0]).

init() ->
	io:format("~p~n", [perm([a,b,c])] ).

perm([]) -> [[]];
perm(L) -> [[F|Rest] || F <- L, Rest <- perm(L--[F])].
