; Tested with GNU CLISP 2.49
(defun collatz (n)
  (print n)
  (cond ((eq n 1) 1)
	((eq (mod n 2) 0) (collatz (floor n 2)))
	(t (collatz (+ (* 3 n) 1)))
	)
  )
