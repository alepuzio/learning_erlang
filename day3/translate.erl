%declare module "translate"
-module(translate).
% delcare the function "loop" with no argument
-export([loop/0]).

% reserved work of Erlang
loop() ->
    receive %receive message
	"casa" -> % message from the sender
	    io:format("house ~n" ), % action
	    loop(); % recall itself, not clear why not stackoverflow

	"blanca" ->
	    io:format("white ~n"),
	    loop();

	_ -> % of it receives an unexpected message
	    io:format("I don't understand: "),
	    loop()
end .
