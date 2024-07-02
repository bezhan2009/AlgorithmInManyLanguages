module bubbleSort

import StdEnv

bubbleSort :: [Int] -> [Int]
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort xs = bubbleSort (init ys) ++ [last ys]
    where
    ys = foldl swap [] xs

    swap acc x
        | acc == [] = [x]
        | last acc > x = init acc ++ [x, last acc]
        | otherwise = acc ++ [x]

Start = bubbleSort [5, 3, 8, 4, 2]
