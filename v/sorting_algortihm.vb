Module InsertionSort
    Sub Main()
        Dim arr() As Integer = {5, 2, 4, 6, 1, 3}
        Console.WriteLine("Original array:")
        Console.WriteLine(String.Join(", ", arr))

        arr = Sort(arr)

        Console.WriteLine("Sorted array:")
        Console.WriteLine(String.Join(", ", arr))
    End Sub

    Function Sort(arr() As Integer) As Integer()
        Dim n As Integer = arr.Length
        Dim i, j, key As Integer

        For i = 1 To n - 1
            key = arr(i)
            j = i - 1

            While j >= 0 AndAlso arr(j) > key
                arr(j + 1) = arr(j)
                j -= 1
            End While

            arr(j + 1) = key
        Next

        Return arr
    End Function
End Module
