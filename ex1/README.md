
## To test ex1

    cd ex1
    erlc ex1.erl

## test the solution

    cd ex1/solution
    erlc ex1.erl
    erl
    

### To allow specific paths to look for beam files

    erl -pa workshop/ebin -pa ex1/solution
