-module(main).
-export([init/0]).

init() ->
	% Variables acquire values as the result of
	% successful pattern matching operation.

	% LeftSide = RightSide
	% Evaluate the right side,
	% then match the result against the pattern on the left side.

	% The right side is evaluated as 2 and
	% N has no value on the left side so the pattern match succeeds
	% and N gets bound to the expression result on the right
	N = 2,

	% The right side is evaluated as 2 and
	% N is bound to 2
	% So the Pattern Match succeeds.
	N = 2,

	% Produces an error:
	% N = 4,
	% ERROR:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'

	IsDone = true,
	% PASS: true

	{num, Num} = {num, 4},
	% PASS: {num,4}

	{X1,X2,X3} = {dog, "fido", 3},
	% PASS: {dog,"fido",3}

	% {X4,X5} = {dog, "fido", 3},
	% FAIL: SHELL_ERROR:
	% ** exception error: no match of right hand side value {dog,"fido",3}

	List = [A,B,C,D] = [1,2,3,4],
	% PASS: [1,2,3,4]
	io:format("~p ~p ~p ~p ~p ~n", [List, A, B, C, D]),
	% OUTPUT: [1,2,3,4] 1 2 3 4

	[First|Rest] = List,
	% PASS: [1,2,3,4]
	io:format("~p ~p ~n", [First, Rest]).
	% OUTPUT: 1 [2,3,4]
