% Tested with Erlang/OTP 19
-module(collatz).
-export([collatz/1]).

collatz(1) -> io:write(1),io:nl(), 1;
collatz(N) when N - (N div 2) * 2 == 0 -> io:write(N),io:nl(), collatz(N div 2);
collatz(N) -> io:write(N),io:nl(), collatz(3 * N + 1).
