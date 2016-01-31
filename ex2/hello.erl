-module(hello).
-export([world/0]).

world()->
   io:format("hello world~n").
