#lang planet neil/sicp

; linear recursive process
(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (factorial n)
  (define (next t) (+ 1 t))
  (define (term t) (if  (= t 0) 1 t))
  (product term 0 next n))

; where n is even, n >= 2
(define (quarter-pi n)
  (define (next t)
    (+ 2 t))
  (define (term t)
    (/ (* t (+ 2 t))
       (* (+ 1 t) (+ 1 t))))
  (product term 2 next n))

; TEST
(check-expect (factorial 0) 1)
(check-expect (factorial 1) 1)
(check-expect (factorial 10) 3628800)