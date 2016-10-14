-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% CONTROL STATEMENTS
% ----------------------------------------------------------------

init() ->
	% ----------------------------------------------------------------
	% if
	Bandwidth = fast,
	if
		Bandwidth =:= fast -> log("Running HD Video")
	end,

	% ----------------------------------------------------------------
	% case

	isTrue(true),
	% OUTPUT: Is true
	isTrue(false).
	% OUTPUT: Is false

isTrue(X) ->
	case X of
		true -> log("Is true");
		false -> log("Is false")
	end.

% ----------------------------------------------------------------
log(A) -> io:format("~p ~n",[A]).
