-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% MAPS
% ----------------------------------------------------------------

init() ->

	io:format("~p ~n",[#{lisa=>scientist, jose=>mathemetician}]),
	% OUTPUT: #{jose => mathemetician,lisa => scientist}

	Misc1 = #{
		erin => 35,
		"hello" => world,
		100 => "bottles of beer on the wall",
		{pat, 32} => "Good Morning"
	},
	io:format("~p ~n",[Misc1]),
	% OUTPUT: #{100 => "bottles of beer on the wall",erin => 35,{pat,32} => "Good Morning","hello" => world}

	% := updates value only if key already exists
	% => always adds a key into the map even if it doesn't exist
	Misc2 = Misc1#{erin := 29},
	io:format("~p ~n",[Misc2]),
	% OUTPUT: #{100 => "bottles of beer on the wall",erin => 29,{pat,32} => "Good Morning","hello" => world}

	% Extracting field values with pattern matching
	#{erin := Erin, "hello" := Hello} = Misc2,
	io:format("~p ~p ~n",[Erin, Hello]).
	% OUTPUT: 29 world
