\ Tested in GNU Forth 0.7.3
: collatz ( n -- collatz n ) recursive
  dup .
  dup 1 = if 1
  else
    dup 2 mod 0 = if 2 /mod collatz
    else
      3 * 1 + collatz
    endif
  endif ;
