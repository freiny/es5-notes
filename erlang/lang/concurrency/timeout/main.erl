-module(main).
-export([init/0]).

init() ->
	Pid = server:init(),
	server:ping(Pid, {data,"hw"}).
	
