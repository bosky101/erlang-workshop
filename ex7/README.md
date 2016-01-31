# ex7 message_passing echo_server

    erlc *.erl
    erl -s ex7_server
    > erlang:whereis(ex7_server).
    <0.32.0>
    > ex7:echo("a").
    hello "a"
