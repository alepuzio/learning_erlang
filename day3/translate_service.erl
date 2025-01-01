-module(translate_service).
-export([loop/0, translate/2]).


loop() ->
    receive
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
    To ! {self(), Word},
    receive
	Translation -> Translation
end. 
