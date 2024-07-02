// Пример сортировки пузырьком на ExtendScript

function bubbleSort(arr) {
    var n = arr.length;
    for (var i = 0; i < n - 1; i++) {
        for (var j = 0; j < n - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                var temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

// Пример использования
var arr = [5, 3, 8, 4, 2];
arr = bubbleSort(arr);
$.writeln(arr); // Вывод отсортированного массива в консоль ExtendScript
