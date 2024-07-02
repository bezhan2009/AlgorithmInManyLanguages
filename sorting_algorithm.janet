(defn insertion-sort [arr]
  (let [n (length arr)]
    (for [i 1 (inc n)]
      (let [key (arr i)
            j (- i 1)]
        (while (and (>= j 0) (> (arr j) key))
          (do
            (set arr (+ j 1) (arr j))
            (set j (- j 1))))
        (set arr (+ j 1) key)))
    arr))

(def arr @[5 2 4 6 1 3])
(print "Original array: " arr "\n")

(insertion-sort arr)
(print "Sorted array: " arr "\n")
