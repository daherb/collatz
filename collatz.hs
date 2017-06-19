import Debug.Trace

collatz :: Int -> Int
collatz n =
  let c
        | (n == 1) = 1
        | n `mod` 2 == 0 = collatz (n `div` 2)
        | otherwise = collatz (3 * n + 1)
  in
    trace (show n) $ c
