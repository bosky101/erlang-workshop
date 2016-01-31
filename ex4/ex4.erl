-module(ex4).
-export([find_in_array/TODO]).

find_in_array(X, [], _)->
  -1;
find_in_array(X, [Y|_], Index) when X =:= TODO ->
  TODO;
find_in_array(X, [Y|Rest], Index) ->
  find_in_array(TODO, TODO, TODO).

find_in_array(X, L)->
  find_in_array(X, L, 0).

%% erlc ex4.erl
%% erl
%% > find_in_array(5, [1,5,4]).
%% 1
  
