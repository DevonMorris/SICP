; simple primitive
486

; primitive operators +-*/ (combinations)
(+ 137 349)

; primitive operators are not binary even -/
(+ 12 23 45 89 900)
(- 12 23 432 543)
(/ 10 5 2)

; nested primitives and operators
(+ (* 3 5) (- 10 6))

; pretty print long expressions so they are parseable
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

; naming things (notably not the same as assignment)
(define size 2)

; operating on named objects (simplest means of abstraction)
(* 5 size)

; example abstraction where intention becomes clear through naming
(define pi 3.14159)
(define radius 10)
(define area (* pi (* radius radius)))
(define circumference (* 2 pi radius))
area
circumference

; procedure definition. Tell the program _how to_ instead of what
; notably this is doing 2 things. Creating a procedure and naming it. We should
; be able to separate these
(define (square x) (* x x))

; use the procedure
(square 21)

; obviously we can use composition of procedures
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)

; Conditionals
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 3)
(abs 0)
(abs -3)

; default clause
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

; if is a special form of cond
(define (abs x)
  (if (< x 0)
    (- x)
    x))

; and or and not can produce compound predicate
(and (< 3 4) (> 3 4))
(or (< 3 4) (> 3 4))
(not (< 3 4))
