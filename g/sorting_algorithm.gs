// Пример сортировки пузырьком на Gosu
class BubbleSort {
    static function sort(arr : List<Integer>) : List<Integer> {
        var n : Integer = arr.size();
        for (var i : Integer = 0; i < n - 1; i++) {
            for (var j : Integer = 0; j < n - 1 - i; j++) {
                if (arr.get(j) > arr.get(j + 1)) {
                    var temp : Integer = arr.get(j);
                    arr.set(j, arr.get(j + 1));
                    arr.set(j + 1, temp);
                }
            }
        }
        return arr;
    }
}

// Пример использования
value arr = [5, 3, 8, 4, 2];
BubbleSort.sort(arr);
print(arr);
