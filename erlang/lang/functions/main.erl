-module(main).
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
	io:format("SHAPE:~p~nAREA:~p~n", [Shape2, Area2]),
	% OUTPUT:
	% Shape:{circle,4}
	% AREA:50.24

	io:format("~p: ~p~n",[milk, shop:cost(milk)]),
	io:format("~p: ~p~n",[apples, shop:cost(apples)]),
	io:format("~p: ~p~n",[bread, shop:cost(bread)]),
	io:format("~p: ~p~n",[cereal, shop:cost(cereal)]).
	% OUTPUT:
	% milk: 2.0
	% apples: 4.5
	% bread: 3.0
	% cereal: 3.5

	% shop:cost(none),
	% SHELL_ERROR:
	% ** exception error: no function clause matching shop:cost(none) (shop.erl, line 4)
