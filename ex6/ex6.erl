-module(ex6).
-compile(export_all).

wait_for_a_second_and_ping()->
   wait_for_a_second(),
   ping().

ping()->
   io:format(".",[]).

wait_for_a_second()->
   timer:sleep(1000).

wait_for_a_second_and_ping_daemon()->
   wait_for_a_second(),
   ping(),
   TODO.

%% erlc ex6.erl
%% erl
%% > m(ex6).
%% > ex6:wait_for_a_second_and_ping_daemon().
%% .
%% .
%% .
