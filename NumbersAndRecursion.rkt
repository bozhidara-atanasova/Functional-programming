#lang racket
(display "Hello FMI")
#|
Define the following procedures:

- `min-if`, `min-guard`, `min-built-in`: return the smaller of two numbers;
- `last-digit`: returns the last digit of a number;
- `quotient-whole`: returns the
       quotient of the division of two numbers;
- `div-whole`: returns the
       quotient and remainder of the division of two numbers;
- `remove-last-digit`: returns a whole number without its last digit;
- `avg-whole`: returns the average of two whole numbers;
- `round-two-dig`: return the number rounded to the second digit after the decimal point.

**Acceptance criteria:**

1. All tests pass.
2. `min-if` uses an if-else statement.
3. `min-guard` uses guards.
4. `min-built-in` uses built-in functions.
|#
(define (min-if x y)
  (if(< x y) x y))

(define (min-guard x y)
  (cond [(negative? (- x y)) x]
    [else y]
    )
  )
(define (min-built-in x y)
  (min x y)
  )
(define (last-digit n)
  (remainder n 10))
(define (quotient-whole x y)
  (quotient x y))
(define (div-whole x y)
  (/ x y)
  )
(define (remove-last-digit n)
  (quotient n 10)
  )
(define (avg-whole x y)
  (/(+ x y)2))
(define (round-two-dig n)
  (/ (round (* n 100)) 100)
  )
#|
Define two functions - `fact-rec` and `fact-iter`,
that return the factorial of a `non-negative` number.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `fact-rec` creates a linearly recursive process.
4. `fact-iter` creates a linearly iterative process.
|#
(define (fact-rec n)
  (if (= 0 n) 1
      (* n(fact-rec (- n 1 )))))
#|(define (fact-rec n)
  (cond
    [(negative? n) (error "n has to be non-negative")]
    [(zero? n) 1]
    [else (* n (fact-rec (sub1 n)))]
    )
  )|#
;Homework
(define (not-equal-one-line? x y)
  (not(= x y))
  )
(define (not-equal-guards? x y)
  (cond
    [(= x y) #f]
    [else #t]
    )
  )
(define (inside s f c)
  (if(= s f)
     "That is wrong diapason"
    (if (and( >= c s)( <= s f))
        "It is in the diapason"
        #f)
  ))
;
(define (even-if? n)
  (if(= 0 (remainder n 2)) #t
     #f))
(define (even-guards? n)
  (cond
    [(= 0(remainder n 2))#t]
    [else #f]))

(define (sum-cubes-no-pow x y)
  (+ (* x x x) (* y y y)))
(define (sum-cubes-pow x y)
  (+(expt x 3)(expt y 3)))
  
(define (sq-avg x y)
  (/(+ (* x x)(* y y))2))
(define (gcd x y)
  (if (= y 0)
      x
      (gcd y (remainder x y))))
(define (can-carry? c k w)
  (if(<= (* c w) k) #t
     #f))
(define (growing-plant up-speed down-speed desired-height)
  (define (helper height days)
    (if (>= height desired-height)
        days
        (helper (+ (- height down-speed) up-speed) (+ days 1))))
  (helper 0 1))
(define (snail height up-speed down-speed)
  (define (helper current-height days)
    (if (>= (+ current-height up-speed) height)
        (+ days 1)
        (helper (- (+ current-height up-speed) down-speed) (+ days 1))))
  (helper 0 0))
(define (rev n)
  (if (< n 0)
      "Invalid input: number must be non-negative"
      (let loop ((num n) (result 0))
        (if (= num 0)
            result
            (loop (quotient num 10) (+ (* result 10) (remainder num 10))))))
)
(define (palindrome? n)
  (if (< n 0)
      #f 
      (let loop ((num n) (reversed 0))
        (if (= num 0)
            (= n reversed) 
            (loop (quotient num 10) (+ (* reversed 10) (remainder num 10))))))
)
(define (sum-digits-rec num)
  (if (= num 0)
      0
      (+ (remainder num 10) (sum-digits-rec (quotient num 10)))))

