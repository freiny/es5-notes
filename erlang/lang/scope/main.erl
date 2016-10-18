-module(main).
-export([init/0]).

% Variables are immutable, can only be defined once.
% And are scoped to their lexical unit, the function in this case.
% Since the variable N is scoped to the function,
% the variable N is not being redefined
% and can be a different value in a different function

% Variables cannot "escape" outside the clause.
% There's no such thing as global or private variables shared by
% different clauses in the same function.

fn1() ->
	N=21,
	io:format("~p~n",[N]).

fn2() ->
	N=22,
	io:format("~p~n",[N]).

init() ->
	fn1(),
	fn2().
