-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% Operator	Description	Argument			Type
% ----------------------------------------------------------------
% +					Unary +										Number
% -					Unary -										Number
% +	 																	number
% -	 																	Number
% *	 																	Number
% /					Floating point division		Number
% bnot			Unary bitwise NOT					Integer
% div				Integer division					Integer
% rem				Integer remainder of X/Y	Integer
% band			Bitwise AND								Integer
% bor				Bitwise OR								Integer
% bxor			Arithmetic bitwise XOR		Integer
% bsl				Arithmetic bitshift left	Integer
% bsr				Bitshift right						Integer
% ----------------------------------------------------------------

% Internally, Erlang uses 64-bit IEEE 754-1985 floats

init() ->
	io:format("~p~n",[14]),
	% OUTPUT: 14

	io:format("~p~n",[1 + 2]),
	% OUTPUT: 3

	io:format("~p~n",[3 - 4]),
	% OUTPUT: -1

	io:format("~p~n",[3 * 4]),
	% OUTPUT: 12

	io:format("~p~n",[4 / 2]),
	% OUTPUT: 2.0

	io:format("~p~n",[math:pow(3, 2)]),
	% OUTPUT: 9.0

	io:format("~p~n",[(2*3)+4]),
	% OUTPUT: 10

	io:format("~p~n",[2*(3+4)]),
	% OUTPUT: 14

	io:format("~p ~p ~n", [7 div 3, 7 rem 3]).
	% OUTPUT: 2 1
