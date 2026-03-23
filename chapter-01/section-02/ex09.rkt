#lang sicp

; recursive version
(define (plus-version-1 a b)
  (if (= a 0) b (inc (+ (dec a) b))))

; iterative version
(define (plus-version-2 a b)
  (if (= a 0) b (+ (dec a) (inc b))))

(plus-version-1 4 5)
(plus-version-2 4 5)