-module(TODO).
-export([add/0, concatenate/0]).

add()->
   1 + TODO.

TODO()->
   TODO ++ TODO.

%% $ erlc ex1.erl
%% $ erl
%% > ex1:add().
%% 3
%% > ex1:concatenate().
%% "hello world"
