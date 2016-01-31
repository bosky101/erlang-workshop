-module(ex8).
-export([start/0, echo/1]).

loop()->
  receive
     {from, Pid, Str} ->
          reply(Pid, "hello " ++  Str),
          loop()
  end.

reply(To, Str)->
    io:format("reply ~p to process ~p~n",[Str,To]),
    To ! {ok, Str}.

start()->
  Pid = spawn(fun()->
           loop()
        end),
  register(ex8_server, Pid).

echo(Str)->
  From = self(),
  ex8_server ! { from, From, Str},
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
