-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% ANONYMOUSE VARIABLE
% <<E1, E2, ..., En>>
% Ei = Value |
%      Value:Size |
%      Value/TypeSpecifierList |
%      Value:Size/TypeSpecifierList
% ----------------------------------------------------------------



init() ->

	R = 12,
	G = 62,
	B = 22,
	io:format("~w ~n", [<<R:5, G:6, B:5>>]),

	RGB = <<12:5, 62:6, 22:5>>,
	io:format("~w ~n", [RGB]),
	% OUTPUT: <<103,214>>

	<<Rx:5, Gx:6, Bx:5>> = RGB,
	io:format("~p ~p ~p ~n", [Rx,Gx,Bx]).
	% OUTPUT: 12 62 22
