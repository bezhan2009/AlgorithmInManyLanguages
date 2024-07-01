module SortingAlgorithm where

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort xs = bubbleSort' xs (length xs)

bubbleSort' :: Ord a => [a] -> Int -> [a]
bubbleSort' xs 0 = xs
bubbleSort' xs n = bubbleSort' (bubble xs) (n - 1)

bubble :: Ord a => [a] -> [a]
bubble [x] = [x]
bubble (x:y:zs)
    | x > y     = y : bubble (x : zs)
    | otherwise = x : bubble (y : zs)

main :: IO ()
main = do
    let arr = [64, 34, 25, 12, 22, 11, 90]
    putStrLn $ "Sorted array: " ++ show (bubbleSort arr)
