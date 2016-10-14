-module(main).
-export([init/0]).

init() ->
	Pid = area_server:init(),
	area_server:area(Pid,{rectangle,4,5}).
