#lang sicp

(define (>= x y) (or (> x y) (= x y)))

(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (f x y z)
  (if (and (>= x z) (>= y z)) (sum-squares x y)
      (if (and (>= y x) (>= z x)) (sum-squares y z) (sum-squares x z))))

(f 1 2 3)
(f 3 2 1)
(f 3 1 2)