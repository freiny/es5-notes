-module(server).
-export([init/0, listen/0, ping/2]).

init() ->
	spawn(server,listen,[]).

listen() ->
	receive
		{Pid, Req} ->
			io:format("listen() received: self(~p) Pid(~p) Req(~p) ~n", [self(), Pid, Req]),
			listen()
	end.

ping(Pid, Req) ->
	io:format("ping() self(~p) Pid(~p) Req(~p) ~n", [self(), Pid, Req]),
	rpc(Pid,Req).

rpc(Pid, Req) ->
	io:format("rpc() sent: self(~p) Pid(~p) Req(~p) ~n", [self(), Pid, Req]),
	Pid ! {self(), Req},
	receive
		{Pid, Res} ->
			io:format("rpc received: self(~p) Pid(~p) Res(~p) ~n", [self(), Pid, Res]),
			Res
	end.
