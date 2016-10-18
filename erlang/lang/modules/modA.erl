-module(modA).	% geometry is the name of the module
-export([init/0]).

init() -> io:format("modA running...~n").
% OUTPUT: modA running...
