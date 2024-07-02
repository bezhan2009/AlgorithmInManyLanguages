int* bubble_sort(int* arr) {
    int n = sizeof(arr);
    int swapped;
    do {
        swapped = 0;
        for (int i = 0; i < n - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                int temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
                swapped = 1;
            }
        }
    } while (swapped);
    return arr;
}

void main() {
    int* arr = ({64, 34, 25, 12, 22, 11, 90});
    arr = bubble_sort(arr);
    write("Sorted array: %O\n", arr);
}
