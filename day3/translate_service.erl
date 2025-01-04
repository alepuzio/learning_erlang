%declare the module
-module(translate_service).
%declare 2 functions: loop with no arguments and translate with 2 arguments
-export([loop/0, translate/2]).

% using a loop: it's a reserved word of Erlang? TODO
loop() ->
    receive % receiving the message from the sender
	{From,"casa"} ->
	    From ! "house1",
	    loop();

	{From, "blanca"} ->
	    From ! "white2",
	    loop();

	{From, _ } -> 
	    From ! "I don't understand3",
	    loop()
end .

translate (To, Word) ->
    io:format("chiama funzione"),
    To ! {self(), Word},
    receive
	Translation -> Translation
end.


