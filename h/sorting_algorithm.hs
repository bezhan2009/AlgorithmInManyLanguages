-- Функция для слияния двух отсортированных списков
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

-- Функция для сортировки слиянием
mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs =
  let (left, right) = splitAt (length xs `div` 2) xs
  in merge (mergeSort left) (mergeSort right)

-- Пример использования
main :: IO ()
main = do
  let arr = [5, 2, 4, 6, 1, 3]
  putStrLn "Original array:"
  print arr
  let sortedArr = mergeSort arr
  putStrLn "Sorted array:"
  print sortedArr
