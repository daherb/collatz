% Tested with Erlang/OTP 28 [erts-16.0.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [jit:ns]
-module(collatz).
-export([collatz/1,run_collatz/1]).

collatz(1) -> io:write(1),io:nl(), 1;
collatz(N) when N - (N div 2) * 2 == 0 -> io:write(N),io:nl(), collatz(N div 2);
collatz(N) -> io:write(N),io:nl(), collatz(3 * N + 1).

run_collatz(N) -> collatz(N), init:stop().