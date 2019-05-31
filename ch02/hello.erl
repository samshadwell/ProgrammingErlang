-module(hello).
-export([start/0]).

start() ->
  io:format("Hello world~n"),
  io:format("It is me, your computer").
