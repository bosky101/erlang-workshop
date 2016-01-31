-module(ex2).

-export([f3/1]).

%% _ means ignore this argument
f3(0,_)->
  1;
%% ; indicates there is another case of this gaurd clause
f3(N, X)->
  X * f3(N).

f3(N)->
 f3(N-1, N).
