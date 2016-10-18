-module(main).
-export([init/0]).

init() ->
	Self = [node(),?MODULE,?FUNCTION_NAME,self()],
	io:format("~p ~p ~n", [Self, st]),

	Node = node(),
	Sub = spawn(Node, subscriber, init, [Self]),
	Pub = spawn(Node, publisher, init, [Self]),

	Pub ! {Self, {subPid,Sub}}.
