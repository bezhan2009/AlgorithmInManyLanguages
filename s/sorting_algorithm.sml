structure BubbleSort = struct

  fun bubbleSort arr = let
    val n = length arr
    fun swap (i, j, xs) = let
      val temp = List.nth (xs, i)
    in
      List.tabulate (n, fn k =>
        if k = i then List.nth (xs, j)
        else if k = j then temp
        else List.nth (xs, k)
      )
    end

    fun sort (i, j, xs) = CML.do
      if i < j then
        if List.nth (xs, i) > List.nth (xs, i + 1)
        then sort (i + 1, j, swap (i, i + 1, xs))
        else sort (i + 1, j, xs)
      else xs
    end

  in
    sort (0, n - 1, arr)
  end

end
