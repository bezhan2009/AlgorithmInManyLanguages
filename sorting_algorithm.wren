// Функция сортировки вставками
fn insertionSort(arr) {
  var n = arr.count
  for (var i = 1; i < n; i = i + 1) {
    var key = arr[i]
    var j = i - 1
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j]
      j = j - 1
    }
    arr[j + 1] = key
  }
  return arr
}

// Пример использования
var arr = [5, 2, 4, 6, 1, 3]
System.print("Original array:")
System.print(arr)

var sortedArr = insertionSort(arr)
System.print("Sorted array:")
System.print(sortedArr)
