; Пример сортировки пузырьком на Arc

(def bubble-sort (arr)
  (let n (len arr)
    (do (= i 0) (< i (- n 1)) (= i (+ i 1))
      (do (= j 0) (< j (- n 1 i)) (= j (+ j 1))
        (if (> (arr j) (arr (+ j 1)))
          (let temp (arr j)
            (= (arr j) (arr (+ j 1)))
            (= (arr (+ j 1)) temp)))))
  arr)

; Пример использования
(bubble-sort '(5 3 8 4 2))
