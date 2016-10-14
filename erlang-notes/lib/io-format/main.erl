-module(main).
-export([init/0]).

init() ->
	io:format("hello~nworld~n"),
	% ~n is newline
	% OUTPUT:
	% hello
	% world

	% ~p is a substitution placeholder, 'x' maps to the ~p
	io:format("~p~n", ['x']),
	% OUTPUT: x

	io:format("~p~p~p~n", ['h', 'e', 'y']),
	% 'h' maps to the first ~p, e to the second, and 'y' to the third
	% OUTPUT: hey

	io:format("~p ~p ~p ~n", ['a', 'b', 'c']),
	% OUTPUT: a b c

	io:format("~p ~p ~p ~n", ["h", "e", "y"]),
	% OUTPUT: "h" "e" "y"

	Sum = 2 + 3,
	io:format("~p ~p ~p ~p ~p ~n", ['a', "abc", 1, 2.0, Sum]).
	% OUTPUT: a "abc" 1 2.0 5
