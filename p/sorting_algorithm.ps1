function InsertionSort($arr) {
    $n = $arr.Length
    for ($i = 1; $i -lt $n; $i++) {
        $key = $arr[$i]
        $j = $i - 1
        while ($j -ge 0 -and $arr[$j] -gt $key) {
            $arr[$j + 1] = $arr[$j]
            $j--
        }
        $arr[$j + 1] = $key
    }
    return $arr
}

$arr = @(5, 2, 4, 6, 1, 3)
Write-Host "Original array:"
Write-Host ($arr -join ", ")

$sortedArr = InsertionSort $arr
Write-Host "Sorted array:"
Write-Host ($sortedArr -join ", ")
