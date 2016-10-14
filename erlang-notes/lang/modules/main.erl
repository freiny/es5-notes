-module(main).
-export([init/0]).

init() ->

	% Calling functions from different modules
	modA:init(),
	modB:init(),
	modC:init().
	% OUTPUT:
	% modA running...
	% modB running...
	% modC running...
