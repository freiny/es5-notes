-module(main).
-export([init/0]).

init() ->

	% Variables are immutable, once set, they can't be changed
	% N = 4,
	% N = 5,
	% ERRORS:
	% file:line: Warning: no clause will ever match
	% file:line: Warning: the guard for this clause evaluates to 'false'

	% ----------------------------------------------------------------
	% INTEGERS
	% Integer names must start with uppercase
	A = 3,
	B = 4,
	Sum = A + B + 5,

	io:format("~p ~n", [Sum]),
	% OUTPUT: 12

	% ----------------------------------------------------------------
	% ATOMS
	% Atom names must start with lowercase
	% Atoms are global and are similar to constants
	% and enumerated types

	io:format("~p ~p ~n", [option_1, option_x]),
	% OUTPUT: option_1 option_x

	OptA = option_1,
	OptB = option@2,
	OptC = 'Option_3',
	io:format("~p ~p ~p ~n", [OptA, OptB, OptC]),
	% OUTPUT: option_1 option@2
	% ----------------------------------------------------------------
	% TUPLES

	Cat = {"fifi", 4},
	io:format("~p ~n", [Cat]),
	% OUTPUT: {"fifi",4}

	Dog = {dog, "fido", 2},
	io:format("~p ~n",[Dog]),

	Person = {person, {name, "Pat"}, {age, 25}, {haircolor, brown}},
	io:format("~p ~n", [Person]),
	% OUTPUT: {person,{name,"Pat"},{age,25}}

	First = {firstName, ann},
	Last = {lastName, pan},
	P = {person, First, Last},
	io:format("~p ~n",[P]),
	% OUTPUT: {person,{firstName,ann},{lastName,pan}}

	% Extract fields from person tuple
	{person, NameTuple, AgeTuple, HairColorTuple} = Person,
	io:format("~p ~p ~p ~n",[NameTuple, AgeTuple, HairColorTuple]),
	% OUTPUT: {name,"Pat"} {age,25} {haircolor,brown}

	% Extract fields from nested person tuple
	{person, {_, Name}, {_, Age}, {_, HairColor}} = Person,
	io:format("~p ~p ~p ~n",[Name, Age, HairColor]),
	% OUTPUT: "Pat" 25 brown

	% ----------------------------------------------------------------
	% LISTS

	List = [1,2,3],
	io:format("~p~n",[List]),
	% OUTPUT: [1,2,3]

	Stuff = [1,'b',"c", {name,"Joe"}, List, [4,5,6]],
	io:format("~p~n",[Stuff]),
	% OUTPUT: [1,b,"c",{name,"Joe"},[1,2,3]]

	More = [4,5,6],
	io:format("~p ~n",[ [1,2,3|More] ]),
	% OUTPUT: [1,2,3,4,5,6]

	BigList = [1,2,3,4,5,6,7,8],

	% Extract first element from list
	[BL1|BLMore] = BigList,
	io:format("~p ~p ~n",[BL1, BLMore]),
	% OUTPUT: 1 [2,3,4,5,6,7,8]

	% Extract multiple elements from list
	[BL2, BL3|BLTheRest] = BLMore,
	io:format("~p ~p ~p ~n",[BL2, BL3, BLTheRest]),
	% OUTPUT: 2 3 [4,5,6,7,8]

	% ----------------------------------------------------------------
	% STRINGS

	% There are no strings in Erlang, but...
	% we can represent strings by a list of integers or as a binary

	% As a list of integers, each element in the list represents
	% a Unicode codepoint

	% "Fifi" is shorthand for a list of integers
	CatName = "Fifi",
	io:format("~p~n", [CatName]),
	% OUTPUT: "Fifi"

	% Set format to display integer list
	io:format("~w ~n", [CatName]),
	% OUTPUT: [70,105,102,105]

	% If all of the elements in the integer list are printable,
	% then the shell prints the list as a string,
	%
	% Otherwise, it just prints it as a list of integers

	CatNameList1 = [102,105,102,105],
	CatNameList2 = [102,105,102,105,0],
	% 0 represents Null in unicode and is non-printable

	io:format("~p ~p ~n", [CatNameList1, CatNameList2]),
	% OUTPUT: "FIFI" [102,105,102,105,0]

	io:format("~p ~n", [ [$f,$i,$f,$i] ]),
	% OUTPUT: "fifi"

	io:format("~p ~n", [ [$f-32,$i,$f,$i] ]),
	% OUTPUT: "Fifi"

	io:format("~p ~n", [ [$f,$i,$f,$i,0] ]),
	% OUTPUT: [102,105,102,105,0]

	Str = "a\x{2260}b",
	io:format("~p ~n", [Str]),
	% OUTPUT: [97,8800,98]
	io:format("~ts ~n", [Str]).
	% OUTPUT: a≠b

	% ----------------------------------------------------------------
