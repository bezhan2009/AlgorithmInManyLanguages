const std = @import("std");

pub fn insertionSort(arr: []i32) []i32 {
    const n = arr.len;
    for (var i: usize = 1; i < n; i += 1) {
        const key = arr[i];
        var j: isize = i - 1;
        while (j >= 0 and arr[j] > key) : (j -= 1) {
            arr[j + 1] = arr[j];
        }
        arr[j + 1] = key;
    }
    return arr;
}

pub fn main() void {
    var arr: []i32 = [5, 2, 4, 6, 1, 3];
    std.debug.print("Original array: ");
    std.debug.print("{d}", .{arr});
    std.debug.print("\n");

    const sortedArr = insertionSort(arr);
    std.debug.print("Sorted array: ");
    std.debug.print("{d}", .{sortedArr});
    std.debug.print("\n");
}
