program bubble_sort
    implicit none
    integer, dimension(7) :: arr = [64, 34, 25, 12, 22, 11, 90]
    integer :: i, j, temp, n
    n = size(arr)
    do i = 1, n-1
        do j = 1, n-i
            if (arr(j) > arr(j+1)) then
                temp = arr(j)
                arr(j) = arr(j+1)
                arr(j+1) = temp
            end if
        end do
    end do
    print *, "Sorted array:"
    do i = 1, n
        print *, arr(i)
    end do
end program bubble_sort
