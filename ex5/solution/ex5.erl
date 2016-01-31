-module(ex5).
-compile(export_all).

wait_for_a_second_and_ping()->
   wait_for_a_second(),
   ping().

ping()->
   io:format(".",[]).

wait_for_a_second()->
   timer:sleep(1000).

%% erlc ex5.erl
%% erl
%% > m(ex5).
%% shows exported functions
%%
%% > ex5:wait_for_a_second_and_ping().
%% Ctr + C, twice to come out of the erl shell
