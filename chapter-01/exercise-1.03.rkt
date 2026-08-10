#lang sicp

(define (f a b c)
        (cond ((and (larger-or-equal a c) (larger-or-equal b c)) (+ a b))
              ((and (larger-or-equal a b) (larger-or-equal c b)) (+ a c))
              ((and (larger-or-equal b a) (larger-or-equal c a)) (+ b c))))

(define (larger-or-equal a b) 
        (or (> a b) (= a b)))

; tests
(f 1 2 3)
(f 1 3 2)
(f 2 1 3)
(f 2 3 1)
(f 3 2 1)
(f 3 1 2)
(f 3 1 1)
(f 1 1 3)
(f 1 3 1)
(f 3 3 3)