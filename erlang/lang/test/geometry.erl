-module(geometry).	% geometry is the name of the module
-export([test/0]).
-export([area/1]).	% exported functions are accessible by outside modules
% area/1 means the function area has 1 input parameter
% fnName/N , N is the arity of the function

area({square, L}) -> L * L;
area({rectangle, W, H}) -> W * H;
area({circle, R}) -> 3.14 * R * R.

test() ->

	io:format("25 = area({square, 5}),~n"),
	25 = area({square, 5}),

	io:format("12 = area({rectangle, 3,4}),~n"),
	12 = area({rectangle, 3,4}),

	% PASSING TEST:
	% io:format("50.24 = area({circle, 4}),"),
	% 50.24 = area({circle, 4}),
	% FAILING TEST:
	io:format("1000 = area({circle, 4}),~n"),
	1000 = area({circle, 4}),

	io:format("PASSED - ~p~n",[geometry]).
