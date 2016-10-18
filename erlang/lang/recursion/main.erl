-module(main).
-export([init/0]).

init() ->
	list:count([]),
	% OUTPUT: List is Empty

	list:count([a, b, c, d]),
	% OUTPUT:
	% a [b,c,d]
	% b [c,d]
	% c [d]
	% d []
	% List is Empty

	List = [1,2,3,4],
	io:format("SUM(~p): ~p~n", [List, list:sum(List)]).
	% OUTPUT:
	% SUM([1,2,3,4]): 10
