class BubbleSort {
    static Void sort(Int[] arr) {
        Int n := arr.size
        for (i := 0; i < n - 1; i++) {
            for (j := 0; j < n - 1 - i; j++) {
                if (arr[j] > arr[j + 1]) {
                    Int temp := arr[j]
                    arr[j] = arr[j + 1]
                    arr[j + 1] = temp
                }
            }
        }
    }
}

// Пример использования
Void main() {
    Int[] arr := [5, 3, 8, 4, 2]
    BubbleSort.sort(arr)
    echo(arr)
}
