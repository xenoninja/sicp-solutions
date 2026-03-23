#lang sicp

(define (sqrt-iter guess x last-guess)
  (if (good-enough? last-guess guess)
      guess
      (sqrt-iter (improve guess x)
                 x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? last-guess guess)
  (< (abs (- last-guess guess)) 0.000001))

(define (sqrt x)
  (sqrt-iter 1.0 x 0))

(sqrt 9)