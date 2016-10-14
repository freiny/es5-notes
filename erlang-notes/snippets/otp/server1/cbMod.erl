-module(cbMod).
-export([init/0, add/2, find/1, handle/2]).
-import (server1, [rpc/2]).
% ****************************************************************
% Callback State is stored as dict
init() -> dict:new().

% Handles server requests
handle({add, Name, Place}, CBState) ->
	{ok, dict:store(Name, Place, CBState)};
handle({find, Name}, CBState) ->
	{dict:find(Name, CBState), CBState}.

% ****************************************************************
add(Name, Place) ->
	rpc(cbName, {add, Name, Place}).

find(Name) ->
	rpc(cbName, {find, Name}).

% ****************************************************************
