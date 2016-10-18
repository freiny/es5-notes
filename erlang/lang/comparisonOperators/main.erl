-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% ==	Equal to
% /=	Not equal to
% =<	Less than or equal to
% <		Less than
% >=	Greater than or equal to
% >		Greater than
% =:=	Exactly equal to
% =/=	Exactly not equal to
% ----------------------------------------------------------------

init() ->

	% ----------------------------------------------------------------
	% == equals
	% =:= exactly equals

	io:format("~s ~p ~n",['2 == 2', 2 == 2]),
	io:format("~s ~p ~n",['2 == 2.0', 2 == 2.0]),

	io:format("~s ~p ~n",['2 =:= 2', 2 =:= 2]),
	io:format("~s ~p ~n",['2 =:= 2.0', 2 =:= 2.0]),

	A1 = a,
	A2 = a,
	io:format("~s ~p ~n",['a == a', a == a]),
	io:format("~s ~p ~n",['a == b', a == b]),
	io:format("~s ~p ~n",['A1 == a', A1 == a]),
	io:format("~s ~p ~n",['A1 == b', A1 == b]),
	io:format("~s ~p ~n",['A1 =:= a', A1 =:= a]),
	io:format("~s ~p ~n",['A1 =:= A2', A1 =:= A2]),

	%  number < atom < reference < fun < port < pid < tuple < map < nil < list < bit string
	io:format("~s ~p ~n",['[a] > {a}', [a] > {a}]),
	io:format("~s ~p ~n",['apple > (fun() -> apple end)', apple > (fun() -> apple end)]).

	% OUTPUT:
	% 2 == 2 true
	% 2 == 2.0 true
	% 2 =:= 2 true
	% 2 =:= 2.0 false
	% a == a true
	% a == b false
	% A1 == a true
	% A1 == b false
	% A1 =:= a true
	% A1 =:= A2 true
	% [a] > {a} true
	% apple > (fun() -> apple end) false

	% ----------------------------------------------------------------
