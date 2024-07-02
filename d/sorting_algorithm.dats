// Пример сортировки пузырьком на ATS

fun bubble_sort(arr: &array(int, n)): void =
  let
    var n = length(arr)
  in
    if n > 1 then
      var () =
        for i = 0 to n - 2 do
          for j = 0 to n - 2 - i do
            if arr[j] > arr[j + 1] then
              let
                val tmp = arr[j]
              in
                arr[j] := arr[j + 1]
                arr[j + 1] := tmp
              end
            end
          end
        end
      end
    end

implement main() =
  let
    val arr = @[5, 3, 8, 4, 2]
  in
    bubble_sort(arr)
    println!("Sorted array: {:?}", arr)
  end
