(define (sqrt x )

  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))
    )
  )

  (define (good-enough? guess)
    (< (abs (- (square guess ) x )) 0.0001)
  )

  (define (improve guess)
    (average guess (/ x guess ))
  )

  (define (average x y)
    (/ (+ x y ) 2)
  )

  (sqrt-iter 1.0   )
)

(sqrt 9)

(sqrt (+ 100 37))

(sqrt 25)
