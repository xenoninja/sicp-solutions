#lang sicp

(define (recursive-f n)
  (if (< n 3) n
      (+ (recursive-f (- n 1)) (* 2 (recursive-f (- n 2))) (* 3 (recursive-f (- n 3)))) ))

(define (iterative-f n)
  (iter-f 2 1 0 n))

(define (iter-f a b c count)
  (if (= count 0) c (iter-f (+ a (* 2 b) (* 3 c)) a b (- count 1))) )

(recursive-f 0)
(recursive-f 1)
(recursive-f 2)
(recursive-f 3)
(recursive-f 4)
(recursive-f 5)
(recursive-f 6)
(recursive-f 7)
(recursive-f 8)

(iterative-f 0)
(iterative-f 1)
(iterative-f 2)
(iterative-f 3)
(iterative-f 4)
(iterative-f 5)
(iterative-f 6)
(iterative-f 7)
(iterative-f 8)