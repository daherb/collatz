% Tested with SWI-Prolog (threaded, 64 bits, version 9.2.9)
collatz(1,1) :- writeln(1), !.
collatz(N,R) :- M is N mod 2,  M = 0, !, writeln(N), D is N div 2, collatz(D,R).
collatz(N,R) :- !, M is 3 * N + 1, writeln(N), collatz(M,R).		  
