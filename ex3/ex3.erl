-module(ex3).

-export([fact/1]).

%% _ means ignore this argument
fact(0,_)->
  1;
%% ; indicates there is another case of this gaurd clause
fact(N, X)->
  TODO.

fact(N)->
 fact(N-1, N).

%% erlc ex3.erl
%% erl 
%% > m(ex3).
%% > ex3:fact(5).
%% 120
