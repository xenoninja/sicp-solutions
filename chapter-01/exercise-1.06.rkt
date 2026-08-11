#lang debug sicp

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt-iter guess x)
(if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(define (sqrt x)
(sqrt-iter 1.0 x))

; new version of sqrt
(define (new-if predicate then-clause else-clause)
(if predicate then-clause else-clause))

(define (new-sqrt-iter guess x)
(new-if (good-enough? guess x)
guess
(new-sqrt-iter #R(improve guess x) x)))

(define (new-sqrt x)
(new-sqrt-iter 1.0 x))

; LOOP!
(new-sqrt 3)

; When the applicative-order is applied, the arguments of new-if will be evaluated endlessly,
; which causes a loop.