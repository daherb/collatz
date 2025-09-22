-- Tested with GHCi 8.0.2
import System.Environment

collatz :: Int -> [Int]
collatz n 
  | (n == 1) = [1]
  | n `mod` 2 == 0 = n:collatz (n `div` 2)
  | otherwise = n:collatz (3 * n + 1)


main :: IO ()
main =
  do
    args <- map read <$> getArgs
    putStrLn $ unlines $ map show $ collatz $ args !! 0
