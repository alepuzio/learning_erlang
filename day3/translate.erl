-module(translate).
-export([loop/0]).


loop() ->
    receive
	"casa" ->
	    io:format("house -n"),
	    loop();

	"blanca" ->
	    io:format("white"),
	    loop();

	_ -> 
	    io:format("I don't understand"),
	    loop()
end .
