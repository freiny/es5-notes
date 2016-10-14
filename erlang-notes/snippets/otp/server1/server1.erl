-module(server1).
-export([start/2, rpc/2,  loop/3]).

% ****************************************************************
start(CBName, CBMod) ->
	register(CBName, spawn(fun() -> loop(CBName, CBMod, CBMod:init()) end)).

% ****************************************************************
rpc(CBName, Req) ->
	CBName ! {self(), Req},
	receive
		{CBName, Res} -> Res
	end.

% ****************************************************************
loop(CBName, CBMod, CBState) ->
	receive
    {From, Req} ->
      {Res, NewState} = CBMod:handle(Req, CBState),
      From ! {CBName, Res},
      loop(CBName, CBMod, NewState)
	end.

% ****************************************************************
