-module(main).
-export([init/0]).

init() ->
	processes:max(25000).
	% OUTPUT:
	% PROCESS LIMIT: 262144
	% PROCESS SPAWN TIME: RT(4.8) WC(11.56) microseconds
