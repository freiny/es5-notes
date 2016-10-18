-module(subscriber).
-export([init/1]).

init(From) ->
	Self = [node(),?MODULE,?FUNCTION_NAME,self()],
	io:format("~p ~p ~p ~n", [Self, sp, From]),
	loop().

loop() ->
	Self = [node(), ?MODULE, ?FUNCTION_NAME, self()],
	io:format("~p ~p ~n", [Self, st]),

	receive
		{RxFrom, Msg} ->
			dbg:log(Self, rx, RxFrom, Msg),
			loop()
	end.
