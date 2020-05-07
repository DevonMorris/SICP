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
