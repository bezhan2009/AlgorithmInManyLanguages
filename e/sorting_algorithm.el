;; Пример сортировки пузырьком на Emacs Lisp (Elisp)

(defun bubble-sort (arr)
  "Сортировка пузырьком на Emacs Lisp."
  (let ((n (length arr)))
    (dotimes (i (- n 1))
      (dotimes (j (- n 1 i))
        (when (> (nth j arr) (nth (1+ j) arr))
          (rotatef (nth j arr) (nth (1+ j) arr))))))
  arr)

;; Пример использования
(let ((arr '(5 3 8 4 2)))
  (setq sorted-arr (bubble-sort arr))
  (message "Sorted array: %s" sorted-arr))
