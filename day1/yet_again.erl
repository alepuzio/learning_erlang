-module(yet_again).
%declare  two functions
-export([another_factorial/1]).
-export([another_fib/1]).


another_factorial(0) -> 1;
another_factorial(N) -> N * another_factorial(N-1).

%factorial
another_fib(0) -> 1;
another_fib(1) -> 1;
another_fib(N) -> another_fib(N-1) + another_fib(N-2).
