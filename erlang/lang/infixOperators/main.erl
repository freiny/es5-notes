-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% Infix Operators: ++ , --
% ++ is list addition
% -- is list subraction
% ----------------------------------------------------------------

init() ->

	% Add lists together
	io:format("~p~n",[ [a,b] ++ [c,d] ]),
	% OUTPUT: [a,b,c,d]

	% Removes first occurrence of b
	io:format("~p~n",[ [1, b, 2, b, 3, 4, b,b] -- [b] ]),
	% OUTPUT: [1,2,b,3,4,b,b]

	% Removes first and second occurrence of b
	io:format("~p~n",[ [1, b, 2, b, 3, 4, b,b] -- [b,b] ]),
	% OUTPUT: [1,2,3,4,b,b]

	% Removes first, second, and third occurrence of b
	io:format("~p~n",[ [1, b, 2, b, 3, 4, b,b] -- [b,b,b] ]),
	% OUTPUT: [1,2,3,4,b]

	% Removes first and second occurrence of b, and first occurrence of 2 and 4
	io:format("~p~n",[ [1, b, 2, b, 3, 4, b,b] -- [b,b,2,4] ]),
	% OUTPUT: [1,3,b,b]

	io:format("~p~n",[ "fifi" ++ [1,2,3] ]).
	% OUTPUT: [102,105,102,105,1,2,3]
