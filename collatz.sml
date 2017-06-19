(* tested with SML/NJ v110.75 *)
fun collatz 1 = 1
  | collatz n = ( TextIO.print (Int.toString n ^ "\n") ;  if n mod 2 = 0 then collatz (n div 2) else collatz (3 * n + 1))
