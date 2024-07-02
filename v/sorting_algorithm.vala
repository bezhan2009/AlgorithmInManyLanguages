void main() {
    int[] arr = {5, 2, 4, 6, 1, 3};
    stdout.printf("Original array: %s\n", arr.to_string());

    insertion_sort(arr);

    stdout.printf("Sorted array: %s\n", arr.to_string());
}

void insertion_sort(int[] arr) {
    int n = arr.length;
    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}
