import std.stdio;

void main() {
    int[] arr = [64, 34, 25, 12, 22, 11, 90];
    bubbleSort(arr);
    writeln("Sorted array: ", arr);
}

void bubbleSort(int[] arr) {
    bool swapped;
    do {
        swapped = false;
        for (int i = 0; i < arr.length - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                arr[i] ^= arr[i + 1];
                arr[i + 1] ^= arr[i];
                arr[i] ^= arr[i + 1];
                swapped = true;
            }
        }
    } while (swapped);
}
