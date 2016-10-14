-module(geometry).	% geometry is the name of the module
-export([area/1]).	% exported functions are accessible by outside modules
% area/1 means the function area has 1 input parameter
% fnName/N , N is the arity of the function

area({square, L}) -> L * L;
area({rectangle, W, H}) -> W * H;
area({circle, R}) -> 3.14 * R * R.
