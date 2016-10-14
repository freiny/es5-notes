-module(modB).	% geometry is the name of the module
-export([init/0]).

init() -> io:format("modB running...~n").
% OUTPUT: modB running...
