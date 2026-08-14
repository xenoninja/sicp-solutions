#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; In applicative-order evaluation (which Scheme currently uses),
; the (p) is endlessly applied by the first defined rule, which causes a loop.
; However, in normal-order evaluation,
; (test 0 (p)) => (if (= 0 0) 0 (p)) => 0.
; There will be no loop.