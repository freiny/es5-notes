-module(mapLC).
-export([init/0]).

% Map function using List Comprehensions

init() ->
	Dbl = fun(X) -> 2*X end,
	io:format("~p~n",[ mapLC(Dbl,[1,2,3,4]) ]).

mapLC(Fn, L) -> ([Fn(X) || X <- L]).
