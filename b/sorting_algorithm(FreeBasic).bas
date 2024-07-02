' Пример сортировки пузырьком на FreeBASIC
Sub BubbleSort(arr() As Integer)
    Dim n As Integer = UBound(arr) - 1
    Dim temp As Integer
    For i = 0 To n - 1
        For j = 0 To n - 1 - i
            If arr(j) > arr(j + 1) Then
                temp = arr(j)
                arr(j) = arr(j + 1)
                arr(j + 1) = temp
            End If
        Next
    Next
End Sub

' Пример использования
Dim arr(4) As Integer = {5, 3, 8, 4, 2}
BubbleSort(arr)
For i = 0 To 4
    Print arr(i)
Next i
