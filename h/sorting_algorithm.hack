<?hh

function bubbleSort(array<int> $arr): array<int> {
    $n = count($arr);
    for ($i = 0; $i < $n - 1; $i++) {
        for ($j = 0; $j < $n - 1 - $i; $j++) {
            if ($arr[$j] > $arr[$j + 1]) {
                $temp = $arr[$j];
                $arr[$j] = $arr[$j + 1];
                $arr[$j + 1] = $temp;
            }
        }
    }
    return $arr;
}

// Пример использования
$arr = array(5, 3, 8, 4, 2);
$arr = bubbleSort($arr);
print_r($arr);
