BEGIN {
    arr[1] = 64; arr[2] = 34; arr[3] = 25; arr[4] = 12; arr[5] = 22; arr[6] = 11; arr[7] = 90;
    n = 7;
    do {
        swapped = 0;
        for (i = 1; i < n; i++) {
            if (arr[i] > arr[i + 1]) {
                temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
                swapped = 1;
            }
        }
    } while (swapped);
    for (i = 1; i <= n; i++) {
        print arr[i];
    }
}
