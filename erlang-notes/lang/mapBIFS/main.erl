-module(main).
-export([init/0]).

init() ->
	L1 = maps:to_list(#{a=>"hello",1=>world}),
	io:format("~p ~n", [L1]).
	% OUTPUT: [{1,world},{a,"hello"}]
