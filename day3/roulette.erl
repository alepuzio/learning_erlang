%name module in the BEAM
-module(roulette).
%export functions
-export([loop/0]).

%send a number 1-6

loop()->
    receive
	3 -> io:format("Bang~n"), exit({roulette, die, at, erlang:time()});
	_ -> io:format("click ~n"), loop()
end .
