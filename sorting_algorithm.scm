;; Bubble sort implementation in Scheme

(define (bubble-sort lst)
  (let loop ((lst lst) (n (length lst)))
    (cond ((= n 0) lst)
          (else (loop (bubble lst) (- n 1))))))

(define (bubble lst)
  (cond ((null? lst) lst)
        ((null? (cdr lst)) lst)
        ((> (car lst) (cadr lst))
         (cons (cadr lst)
               (bubble (cons (car lst) (cddr lst)))))
        (else (cons (car lst)
                    (bubble (cdr lst))))))

(define arr '(64 34 25 12 22 11 90))
(display "Sorted array: ")
(display (bubble-sort arr))
(newline)
