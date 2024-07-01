defmodule SortingAlgorithm do
  def bubble_sort(arr) do
    do_bubble_sort(arr, length(arr))
  end

  defp do_bubble_sort(arr, 0), do: arr
  defp do_bubble_sort(arr, n) do
    do_bubble_sort(do_bubble(arr), n - 1)
  end

  defp do_bubble([x]), do: [x]
  defp do_bubble([x, y | tail]) when x > y do
    [y | do_bubble([x | tail])]
  end
  defp do_bubble([x, y | tail]), do: [x | do_bubble([y | tail])]
end

arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = SortingAlgorithm.bubble_sort(arr)
IO.puts("Sorted array: #{inspect(sorted_arr)}")
