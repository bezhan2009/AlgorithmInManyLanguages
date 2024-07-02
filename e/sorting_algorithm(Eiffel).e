class
    BUBBLE_SORT

create
    make

feature {NONE} -- Initialization

    make
            -- Initialize the instance
        do
            -- Insert initialization instructions here
        end

feature -- Sorting algorithm

    bubble_sort (array: ARRAY [INTEGER])
            -- Sorts the array using bubble sort algorithm
        local
            i, j, temp: INTEGER
        do
            from
                i := 1
            until
                i >= array.count
            loop
                from
                    j := 1
                until
                    j >= array.count - i + 1
                loop
                    if array[j] > array[j + 1] then
                        temp := array[j]
                        array[j] := array[j + 1]
                        array[j + 1] := temp
                    end
                    j := j + 1
                end
                i := i + 1
            end
        end

feature -- Example usage

    example_usage
            -- Example of using bubble sort
        local
            array: ARRAY [INTEGER]
        do
            create array.make_filled (5, <<5, 3, 8, 4, 2>>)
            bubble_sort (array)
            -- Print sorted array elements
            across array as element loop
                print (element.out + "%N")
            end
        end

end
