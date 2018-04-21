-module(ping).
-export([ping/0, ping/1]).
count(C) ->
    C + 1.
pong() -> 
    io:format("pong~n").
ping() ->
    pong(),
    count(0).
ping(C) ->
    pong(), 
    count(C).