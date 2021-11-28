;;; Tested with Sussex Poplog (Version 16.01 Tue Nov  9 10:36:47 AM CET 2021)
define collatz(x);
  x =>;
  if x = 1 then 1 elseif x mod 2 = 0 then collatz (x div 2) else collatz(3 * x + 1)
  endif
enddefine;
