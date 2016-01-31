-module(ex8).
-export([start/0, echo/1]).

loop()->
  receive
     {from, Pid, Str} ->
        reply(TODO, "hello " ++  TODO),
        TODO
  end.

reply(From, Str)->
  From ! {ok, Str}.

start()->
  Pid = spawn(fun()->
           loop()
        end),
  register(ex8_server, Pid).

echo(Str)->
  From = TODO,
  ex8_server ! { from, TODO, Str},
  receive
     {ok, X} ->
        io:format("~p~n",[X])
     after 5000 ->
        io:format("timed out",[])
  end.

%% erlc ex8.erl
%% erl -s ex8_server
%% > ex8:echo("foo")
%% hello "foo"
