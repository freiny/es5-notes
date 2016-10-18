-module(processes).
-export([max/1]).

% ****************************************************************
% Create N processes then destroy them
max(N) ->
	ProcLimit = erlang:system_info(process_limit),
	io:format("PROCESS LIMIT: ~p ~n", [ProcLimit]),
	statistics(runtime),
	statistics(wall_clock),

	L = for(1, N, fun() ->
		spawn(fun() -> wait() end)
	end),

	{_, TimeRT} = statistics(runtime),
	{_, TimeWC} = statistics(wall_clock),

	lists:foreach(fun(Pid) -> Pid ! die end, L),
	RT = TimeRT * 1000 / N,
	WC = TimeWC * 1000 / N,
	io:format("PROCESS SPAWN TIME: RT(~p) WC(~p) microseconds~n", [RT, WC]).

% ----------------------------------------------------------------
wait() ->
	receive
		die -> void
	end.

% ----------------------------------------------------------------
for(N, N, F) -> [F()];
for(I, N, F) -> [F()|for(I+1, N, F)].
