-module(hello).
-export([world/0]).

%% tail recursion for the win
%% Ctr + C, twice to come out of the erl shell
world()->
   io:format("hello world, from erlang~n"),
   world().
