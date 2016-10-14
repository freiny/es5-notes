-module(main).
-export([init/0]).

init() ->

	B = <<16#7A>>,
	io:format("~p ~w ~n", [B, B]),
	% OUTPUT: <<"z">> <<122>>

	% Place each bit of byte B into list L
	L = [X || <<X:1>> <= B],
	io:format("~p ~n", [L]),
	% OUTPUT: [0,1,1,1,1,0,1,0]
	% Try 2 bits at a time
	L2 = [X || <<X:2>> <= B],
	io:format("~p ~n", [L2]),
	% OUTPUT: [1,3,2,2]
	L3 = [X || <<X:4>> <= B],
	io:format("~w ~n", [L3]),
	% OUTPUT: [7,10]

	Bin = << <<X>> || <<X:1>> <= B >>,
	io:format("~p ~n", [Bin]).
	% OUTPUT: <<0,1,1,1,1,0,1,0>>
