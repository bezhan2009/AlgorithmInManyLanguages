(defn bubble-sort [arr]
  (loop [arr arr]
    (let [swapped (atom false)]
      (doseq [i (range (dec (count arr)))]
        (when (> (arr i) (arr (inc i)))
          (swap! swapped true)
          (let [temp (arr i)]
            (aset arr i (arr (inc i)))
            (aset arr (inc i) temp))))
      (if @swapped
        (recur arr)
        arr))))

(def arr [64 34 25 12 22 11 90])
(def sorted (bubble-sort arr))
(println "Sorted array:" sorted)
