-module(list).
-export([count/1,sum/1]).

count([]) -> io:format("List is Empty~n");
count([H|Rest]) ->
	io:format("~p ~p ~n", [H, Rest]),
	count(Rest).

sum([]) -> 0;
sum([H|Rest]) -> H + sum(Rest).
