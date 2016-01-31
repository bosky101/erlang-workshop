-module(ex7).
-export([echo/1]).

echo(Msg)->
  %% self is a reserved keyword that returns the current process identifier
  %% ! is a primative to send any data to a process 
  ex7_server TODO Msg.
  
%% erlc ex7.erl -s ex7_server
%% erl -s ex7_server
%% > erlang:whereis(ekaf_server).
%% <some.pid>
%% > ex7:echo("foo").
%% hello "foo"
