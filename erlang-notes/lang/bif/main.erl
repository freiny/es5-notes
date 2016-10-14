-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% BIF (Built In Functions)

% Some functions would be too slow or not possible using Erlang
% ----------------------------------------------------------------

init() ->

	T1 = list_to_tuple([1,2,3]),
	io:format("~p~n",[T1]),
	% OUTPUT: {1,2,3}

	L2 = [[a,1],[b,2],[c,3]],
	T2 = list_to_tuple( [list_to_tuple(X) || X <- L2] ),
	io:format("~p~n",[T2]),
	% OUTPUT: {{a,1},{b,2},{c,3}}

	io:format("~p~n", [is_tuple(item)] ),
	% OUTPUT: false
	io:format("~p~n", [is_tuple({item, cake})] ),
	% OUTPUT: true
	io:format("~p~n", [tuple_size({item, cake})] ),
	% OUTPUT: 2

	io:format("~p~n", [is_list(item)] ),
	% OUTPUT: false
	io:format("~p~n", [is_list([1,2,3,4])] ),
	% OUTPUT: true
	io:format("~p~n", [length([1,2,3,4])] ),
	% OUTPUT: 4

	N = 4,
	IsIntList = [is_integer(3), is_integer(3.14), is_integer(N), is_integer(item)],
	io:format("~p~n", [IsIntList] ).
	% OUTPUT: [true,false,true,false]
