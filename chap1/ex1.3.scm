; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the larger two numbers

(define (square x) (* x x))
(define (sum-of-squares x y z) (+ (square x) (square y) (square z)))
(define (f x y z)
  (- (sum-of-squares x y z) (square (min x y z))))

(f 2 3 4)
