proc insertionSort {arr} {
    for {set i 1} {$i < [llength $arr]} {incr i} {
        set key [lindex $arr $i]
        set j [expr {$i - 1}]
        while {$j >= 0 && [lindex $arr $j] > $key} {
            lset arr [expr {$j + 1}] [lindex $arr $j]
            incr j -1
        }
        lset arr [expr {$j + 1}] $key
    }
    return $arr
}

# Пример использования
set arr {5 2 4 6 1 3}
puts "Original array: $arr"

set sortedArr [insertionSort $arr]
puts "Sorted array: $sortedArr"
