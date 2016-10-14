-module(main).
-export([init/0]).

init() ->
	% server hooks up to the callback module
	server1:start(cbName, cbMod),

	% Make Requests via the callback module
	cbMod:add(joe, "@home"),
	cbMod:find(joe).
