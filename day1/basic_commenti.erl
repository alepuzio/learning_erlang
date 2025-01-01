%this module is called "basic_commenti"
-module(basic_commenti).
% the function inside this module
%  is called mirror
% and it accepts 1 params
-export([mirror/1]).

%body of the function
%%return the input
%called as 
% basic_commenti:mirror(helloworld)
mirror(Anything) -> Anything.
