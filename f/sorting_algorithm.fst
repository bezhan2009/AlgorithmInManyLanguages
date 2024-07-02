// Пример сортировки пузырьком на F*

let bubbleSort (arr: List<int>) : List<int> =
  let rec bubble (arr: List<int>) (n: int) : List<int> =
    match arr with
    | [] | [_] -> arr
    | hd1 :: hd2 :: tl ->
        if hd1 > hd2 then
          bubble (hd2 :: hd1 :: tl) (n - 1)
        else
          hd1 :: bubble (hd2 :: tl) (n - 1)
  bubble arr (List.length arr)

// Пример использования
let arr = [5; 3; 8; 4; 2]
let sortedArr = bubbleSort arr
printf "Sorted array: %A\n" sortedArr
