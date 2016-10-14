-module(area_server).
-export([init/0, listen/0, area/2]).
% ****************************************************************
init() ->
	spawn(area_server, listen, []).

% ****************************************************************
listen() ->
	receive
		{From, {rectangle, W, H}} ->
			io:format("AREA: ~p ~n", [W*H]),
			From ! W * H,
			listen();
		{From, {square, L}} ->
			io:format("AREA: ~p ~n", [L*L]),
			From ! L * L,
			listen();
		{From, Default} ->
			io:format("~p ~n", [Default]),
			From ! {error, Default},
			listen()
	end.

% ****************************************************************
area(Pid, Args) ->
	rpc(Pid, Args).

% ----------------------------------------------------------------
rpc(Pid, Req) ->
	Pid ! {self(), Req},
	receive
		{Pid, Res} -> Res
	end.

% ----------------------------------------------------------------
