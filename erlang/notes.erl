% ---------------------------------------------------------------
% export is like public in other programming languages (tells what functions can be accessible from outside the module)
% the init function with 1 argument can be called from outside the module
-export([init/1]).

% ---------------------------------------------------------------
% exporting multiple functions
-export([FuncName1/N1, FuncName2/N2, .....]).

% ---------------------------------------------------------------
% spawn creates a concurrent process and returns a process identifier
spawn(ModuleName, FunctionName, [Arg1, Arg2, ...])

% ---------------------------------------------------------------
% start a process that evaluates the function person:init("Joe")
% spawn(module, function, [Argument]) module:function(Argument)
spawn(person, init, ["Joe"])

% ---------------------------------------------------------------
% a variable name starts with an uppercase letter
N=123.
% an atom name starts with lowercase letter
n=??????.

% ---------------------------------------------------------------
% calling a module function,
N=2.
math:pow(N, 3).
% OUTPUT: 8.0

% ---------------------------------------------------------------
% sending messages between modules
msgHandler() ->
	receive
		{Client, list_dir} ->
			Client ! {self(), file:list_dir(Dir)};
		{Client, {get_file, File}} ->
			Full = filename:join(Dir, File),
			Client ! {self(), file:read_file(Full)}
	end,

someFunction() ->
	receive
		pattern1 ->
			action1;
		pattern2 ->
			action2
	end,

% ---------------------------------------------------------------
% THINGS TO STUDY:

% Erlang lets you define your own control structures
% like for loops ...
% using functions that return functions

% Higher Order Functions
% 	- reentrant parsing code
% 	- parser combinators
% 	- lazy evaluators
% 	- lambda abstractions
