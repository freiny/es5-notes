-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% ANONYMOUSE VARIABLE
% _
% ----------------------------------------------------------------

init() ->

	io:format("~p~n",[_ = true]),
	% OUTPUT: true

	IsReady = true,
	io:format("~p~n",[ IsReady = true ]),
	% PASS Pattern Match
	% OUTPUT: [1,5,3,9]

	io:format("~p~n",[ _ = true ]),
	% PASS Pattern Match
	% OUTPUT: [1,5,3,9]

	% io:format("~p~n",[ IsReady = false ]),
	% Fail Pattern Match
	% WARNING:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'

	List = [1,2,3,4],

	% Ignore 2nd and 4th element when extracting list elements
	[W, _, Y, _] = List,

	io:format("~p~n",[ [W, _, Y, _]  = [1,5,3,9] ]),
	% PASS Pattern Match
	% OUTPUT: [1,5,3,9]

	io:format("~p~n",[ [W, _, Y, _]  = [1,0,3,7] ]).
	% PASS Pattern Match
	% OUTPUT: [1,0,3,7]
