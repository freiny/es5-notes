% -module(comb).
% -export([init/0]).
%
% init() ->
% 	io:format("~p~n", [comb([a,b], 4)]).
%
% comb(L, 0) -> [];
% comb(L, N) -> [F <- L, [F|comb(L, N-1)].
