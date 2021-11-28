define collatz(x);
  x =>;
  if x = 1 then 1 elseif x mod 2 = 0 then collatz (x div 2) else collatz(3 * x + 1)
  endif
enddefine;
