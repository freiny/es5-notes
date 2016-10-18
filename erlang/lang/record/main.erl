-module(main).
-export([init/0]).

% ----------------------------------------------------------------
% RECORDS
% ----------------------------------------------------------------

-record(person,{
	username = ann,
	password = "o2Zd45s6kNGi",
	email = "ann@example.com"
}).

-record(animal,{
	type,
	name,
	says
}).

init() ->

	io:format("~p~n", [#person{}]),
	% OUTPUT: {person,ann,"o2Zd45s6kNGi","ann@example.com"}
	io:format("~p~n", [#person{username=bob,password="fieifls",email="bob@example.com"}]),
	% OUTPUT: {person,bob,"fieifls","bob@example.com"}

	io:format("~p~n", [#animal{}]),
	% OUTPUT: {animal,undefined,undefined,undefined}
	Animal1 = #animal{type=dog,name=fido,says="Ruff!"},
	io:format("~p~n", [Animal1]),
	% OUTPUT: {animal,dog,fido,"Ruff!"}
	Animal2 = Animal1#animal{says="BARK!"},
	io:format("~p~n", [Animal2]),
	% OUTPUT: {animal,dog,fido,"Ruff!"}

	% Extract fields from a record
	#animal{type=Type, name=Name} = Animal2,
	io:format("~p ~p ~n", [Type, Name]),
	% OUTPUT: dog fido

	print_record(Animal1),
	% OUTPUT: I'm fido and I say "Ruff!"
	print_record(Animal2).
	% OUTPUT: I'm fido and I say "BARK!"

print_record(#animal{name=Name, says=Says} = Record) ->
	io:format("I'm ~p and I say ~p ~n", [Name,Says]).
