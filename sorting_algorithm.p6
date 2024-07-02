sub insertion-sort(@arr) {
    for 1 ..^ @arr.elems -> $i {
        my $key = @arr[$i];
        my $j = $i - 1;

        while $j >= 0 && @arr[$j] > $key {
            @arr[$j + 1] = @arr[$j];
            $j--;
        }
        @arr[$j + 1] = $key;
    }
    return @arr;
}

my @arr = (5, 2, 4, 6, 1, 3);
say "Original array: @arr";

my @sortedArr = insertion-sort(@arr);
say "Sorted array: @sortedArr";
