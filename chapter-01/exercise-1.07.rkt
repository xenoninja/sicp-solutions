#lang sicp

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; incorrect result
(sqrt 0.000000000001)
; loop
; (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)

; new design for good-enough test
(define (new-good-enough? guess previous-guess)
  (< (/ (abs (- previous-guess guess)) previous-guess) 1e-13))

(define (new-sqrt-iter guess x previous-guess)
  (if (new-good-enough? guess previous-guess)
      guess
      (new-sqrt-iter (improve guess x) x guess)))

(define (new-sqrt x)
  (new-sqrt-iter 2.0 x 1.0))

(new-sqrt 0.000000000001)
(new-sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)