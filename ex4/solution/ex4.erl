-module(ex4).
-export([find_in_array/2]).

find_in_array(_X, [], _)->
  -1;

find_in_array(X, [Y|_], Index) when X =:= Y ->
  Index;
find_in_array(X, [_Y|Rest], Index) ->
  find_in_array(X, Rest, Index + 1).

find_in_array(X, L)->
  find_in_array(X, L, 0).

%% erlc ex4.erl
%% erl
%% > find_in_array(5, [1,5,4]).
%% 1
  
