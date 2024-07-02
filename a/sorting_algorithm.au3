Func BubbleSort(ByRef $arr)
    Local $n = UBound($arr) - 1
    Local $temp
    For $i = 0 To $n - 1
        For $j = 0 To $n - 1 - $i
            If $arr[$j] > $arr[$j + 1] Then
                $temp = $arr[$j]
                $arr[$j] = $arr[$j + 1]
                $arr[$j + 1] = $temp
            EndIf
        Next
    Next
EndFunc

; Пример использования
Local $arr[5] = [5, 3, 8, 4, 2]
BubbleSort($arr)
_ArrayDisplay($arr)
