-module(main).
-export([init/0]).

init() ->
	Pid = server:init(),
	server:ping(Pid,{data,"helloworld"}).
	% OUTPUT:
	% ping() self(<0.3.0>) Pid(<0.57.0>) Req({data,"helloworld"})
	% rpc() sent: self(<0.3.0>) Pid(<0.57.0>) Req({data,"helloworld"})
	% listen() received: self(<0.57.0>) Pid(<0.3.0>) Req({data,"helloworld"})
