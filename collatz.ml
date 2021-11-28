(* Tested with OCaml 4.04.0 *)
let rec collatz n =
  match n with
  | 1 -> 1
  | n -> Printf.printf "%d\n" n ; if n mod 2 = 0 then collatz (n / 2) else collatz (3 * n + 1)
  ;;
