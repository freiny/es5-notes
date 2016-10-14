-module(main).
-export([init/0]).

init() ->

	Bin0 = <<"ANN">>,
	io:format("~w ~n", [Bin0]),
	% OUTPUT: <<65,78,78>>

	io:format("~p ~p ~n", [hello, term_to_binary(hello)]),
	% OUTPUT: hello <<131,100,0,5,104,101,108,108,111>>

	Bin1 = term_to_binary(hello),
	io:format("~p ~p ~n", [Bin1, binary_to_term(Bin1)]),
	% OUTPUT: <<131,100,0,5,104,101,108,108,111>> hello
	io:format("~p ~n", [byte_size(Bin1)]).
	% OUTPUT: 9
