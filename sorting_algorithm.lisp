(defun bubble-sort (arr)
  (let ((n (length arr)))
    (loop
      (let ((swapped nil))
        (dotimes (i (- n 1))
          (when (> (nth i arr) (nth (+ i 1) arr))
            (rotatef (nth i arr) (nth (+ i 1) arr))
            (setq swapped t)))
        (unless swapped (return)))))
  arr)

(print (bubble-sort '(64 34 25 12 22 11 90)))
