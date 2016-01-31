# ex5 
## wait for a second and ping

    erlc ex5.erl
    erl
    > m(ex5).
    Exports:
         module_info/0
         module_info/1
         ping/0
         wait_for_a_second/0
         wait_for_a_second_and_ping/0
    ok
    > ex5:wait_for_a_second_and_ping().
    .
