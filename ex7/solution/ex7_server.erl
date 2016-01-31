-module(ex7_server).
-export([start/0, loop/0]).

loop()->
    receive
        Msg ->
            io:format("~n hello ~p",[Msg]),
            loop()
    end.

start()->
    Pid = spawn(fun()->
                        loop()
                end),
    register(ex7_server, Pid).
