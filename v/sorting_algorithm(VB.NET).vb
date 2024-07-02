' Пример сортировки пузырьком на VB.NET

Module BubbleSortModule
    Sub Main()
        Dim arr() As Integer = {5, 3, 8, 4, 2}
        BubbleSort(arr)
        Console.WriteLine("Sorted array:")
        For Each num In arr
            Console.Write(num & " ")
        Next
        Console.ReadLine()
    End Sub

    Sub BubbleSort(arr() As Integer)
        Dim n As Integer = arr.Length
        For i As Integer = 0 To n - 2
            For j As Integer = 0 To n - 2 - i
                If arr(j) > arr(j + 1) Then
                    ' Обмен значениями
                    Dim temp As Integer = arr(j)
                    arr(j) = arr(j + 1)
                    arr(j + 1) = temp
                End If
            Next
        Next
    End Sub
End Module
