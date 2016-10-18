-module(main).
-export([test/0]).
-export([init/0]).

init() ->

	% Calling a function from another module
	Shape = {square, 4},
	Area = geometry:area(Shape),
	io:format("SHAPE:~p~nAREA:~p~n", [Shape, Area]),
	% OUTPUT:
	% Shape:{square,4}
	% AREA:16

	Shape2 = {circle, 4},
	Area2 = geometry:area(Shape2),
	io:format("SHAPE:~p~nAREA:~p~n", [Shape2, Area2]).
	% OUTPUT:
	% Shape:{circle,4}
	% AREA:50.24

test() ->
	io:format("PASSED - ~p~n",[main]).
