-module(ex7).
-export([echo/1]).

echo(Msg)->
  %% self is a reserved keyword that returns the current process identifier
  ex7_server ! Msg.
  
%% erlc ex7.erl -s ex7_server
%% erl -s ex7_server
%% > ex7:echo("foo").
