#lang sicp

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x) (* x x))

(define (good-enough? guess previous-guess)
  (< (/ (abs (- previous-guess guess)) previous-guess) 1e-13))

(define (curt-iter guess x previous-guess)
  (if (good-enough? guess previous-guess)
      guess
      (curt-iter (improve guess x) x guess)))

(define (curt x)
  (curt-iter 2.0 x 1.0))

(curt 27)