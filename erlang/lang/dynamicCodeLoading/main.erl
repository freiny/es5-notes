-module(main).
-export([init/0]).

init() ->
	start(one),
	start(two).

start(Tag) -> spawn(fun() -> loop(Tag) end).

loop(Tag) ->
	sleep(),
	Val = sub:init(),
	io:format("~p ~p ~n", [Tag, Val]),
	loop(Tag).

sleep() ->
	receive
		after 3000 -> true
	end.
