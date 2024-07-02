fn insertion_sort(mut arr []int) []int {
    for i := 1; i < len(arr); i++ {
        key := arr[i]
        j := i - 1
        for j >= 0 && arr[j] > key {
            arr[j+1] = arr[j]
            j--
        }
        arr[j+1] = key
    }
    return arr
}

fn main() {
    arr := [5, 2, 4, 6, 1, 3]
    println('Original array: ${arr}')
    sorted_arr := insertion_sort(arr)
    println('Sorted array: ${sorted_arr}')
}
