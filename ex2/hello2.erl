-module(hello2).
-export([world/0, start/0]).

world()->
   io:format("hello world~n").

start()->
   world().
