module Main

import Data.Vect

bubbleSort : Vect n Int -> Vect n Int
bubbleSort xs = bubbleSort' (length xs) xs

bubbleSort' : Nat -> Vect n Int -> Vect n Int
bubbleSort' Z xs = xs
bubbleSort' (S k) xs = bubbleSort' k (bubble xs)

bubble : Vect (S n) Int -> Vect (S n) Int
bubble [x] = [x]
bubble (x :: y :: xs) =
  if x > y then y :: bubble (x :: xs)
  else x :: bubble (y :: xs)

-- Пример использования
main : IO ()
main = do
  let arr : Vect 5 Int
      arr = [5, 3, 8, 4, 2]
  putStrLn $ show $ bubbleSort arr
