#lang racket

(define (bubble-sort lst)
  (let loop ([lst lst] [n (length lst)])
    (if (= n 0)
        lst
        (loop (bubble lst) (- n 1)))))

(define (bubble lst)
  (cond
    [(empty? lst) lst]
    [(empty? (rest lst)) lst]
    [(> (first lst) (second lst))
     (cons (second lst)
           (bubble (cons (first lst) (cddr lst))))]
    [else
     (cons (first lst)
           (bubble (rest lst)))]))

(define arr '(64 34 25 12 22 11 90))
(displayln (format "Sorted array: ~a" (bubble-sort arr)))
