program SortingAlgorithm
  implicit none
  integer, dimension(7) :: arr = [64, 34, 25, 12, 22, 11, 90]
  integer :: i, j, temp, n
  logical :: swapped
  n = size(arr)
  do
    swapped = .false.
    do i = 1, n-1
      if (arr(i) > arr(i+1)) then
        temp = arr(i)
        arr(i) = arr(i+1)
        arr(i+1) = temp
        swapped = .true.
      end if
    end do
  end do while (swapped)
  print *, "Sorted array: ", arr
end program SortingAlgorithm
