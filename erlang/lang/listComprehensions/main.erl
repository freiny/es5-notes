-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% LIST COMPREHENSIONS
% Creating lists without funs, maps, or filters

% [ F(X) || X <- L]
% Output List F(X), Input List L fed into X (aka. generator)

% The General Form of a List Comprehension is:
% [E || G]

% Where E is an arbitrary expression and
% G is a Generator, BitString Generator, or filter

% Generators takes the form:
% Pattern <- ListExpression

% BitString Generators takes the form:
% BitStringPattern <- BitStringExpression

% Filters are either predicates (functions that return true or false)
% or Boolean expressions

% ----------------------------------------------------------------

init() ->

	L1 = [2*X || X <- [1,2,3,4]],
	io:format("~p~n",[L1]),
	%  OUTPUT: [2,4,6,8]

	L2 = [{Item, Price/2} || {Item, Price} <- [{apple,40},{orange,0.50},{lime,0.30}]],
	io:format("~p~n",[L2]),
	%  OUTPUT: [{apple,20.0},{orange,0.25},{lime,0.15}]

	L3 = [X || {ann, X} <- [{pat, cat}, {ann,25}, [ann, list], {bob,dog}, {ann,bird}, {joe, 33}, 8, ann, "hello"]],
	io:format("~p~n",[L3]).
	%  OUTPUT: [25, bird]
