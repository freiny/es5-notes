-module(publisher).
-export([init/1]).

init(From) ->
	Self = [node(),?MODULE,?FUNCTION_NAME,self()],
	io:format("~p ~p ~p ~n", [Self, sp, From]),

	receive
		{RxFrom, {subPid, SubPid}} ->
			io:format("~p ~p ~p ~p ~n", [Self, rx, From, {subPid, SubPid}]),
			loop(SubPid)
	end.

loop(SubPid) ->
	Self = [node(), ?MODULE, ?FUNCTION_NAME, self()],
	io:format("~p ~p ~n", [Self, st]),

	TimeMS = rand:uniform(4000),
	Msg = TimeMS,

	io:format("~p ~p ~p ~p ~n", [Self, tx, [node(),subscriber,SubPid], {Self, Msg}]),

	SubPid ! {Self, Msg},
	timer:sleep(TimeMS),
	loop(SubPid).
