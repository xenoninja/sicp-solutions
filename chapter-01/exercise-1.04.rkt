#lang sicp

(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))

(a-plus-abs-b 1 1)
(a-plus-abs-b 1 -1)

; If b is larger than zero, then returns symbol '+' => res is 'a + b';
; Else, returns symbol '-' => res is 'a - b'.
; In conclusion, res is 'a + abs(b)'.