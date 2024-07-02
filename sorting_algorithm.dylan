module: sorting-algorithm
define function bubble-sort(arr :: <vector>)
  let n = size(arr)
  let swapped = false
  loop
    swapped = false
    for i from 0 below n - 1
      if element(arr, i) > element(arr, i + 1)
        let temp = element(arr, i)
        set element(arr, i) = element(arr, i + 1)
        set element(arr, i + 1) = temp
        swapped = true
      end if
    end for
    if not swapped
      exit
    end if
  end loop
end function

define method main()
  let arr = make(<vector>, 64, 34, 25, 12, 22, 11, 90)
  bubble-sort(arr)
  format-out("Sorted array: ~a~%", arr)
end method
