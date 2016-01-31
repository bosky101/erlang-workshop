# ex4

    erlc ex4.erl
    erl
    > ex4:find_in_array(5,[1,5,3]).
    1
    > ex4:find_in_array(5,[1,2,15,3]).
    -1
    > ex4:find_in_array(5,[1,2,15,3,5]).
    4
    > ex4:find_in_array(5,[5,1,2,15,3,5]).
    0
