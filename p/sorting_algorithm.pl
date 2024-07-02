sub bubbleSort {
    my ($arr) = @_;
    my $n = scalar(@$arr);
    for my $i (0 .. $n - 2) {
        for my $j (0 .. $n - $i - 2) {
            if ($arr->[$j] > $arr->[$j + 1]) {
                ($arr->[$j], $arr->[$j + 1]) = ($arr->[$j + 1], $arr->[$j]);
            }
        }
    }
}

my @arr = (64, 34, 25, 12, 22, 11, 90);
bubbleSort(\@arr);
print "Sorted array: " . join(", ", @arr) . "\n";
