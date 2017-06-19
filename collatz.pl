% Tested with SWI-Prolog version 7.2.3 for x86_64-linux
collatz(1,1) :- writeln(1), !.
collatz(N,R) :- M is N mod 2,  M = 0, !, writeln(N), D is N div 2, collatz(D,R).
collatz(N,R) :- !, M is 3 * N + 1, writeln(N), collatz(M,R).		  
