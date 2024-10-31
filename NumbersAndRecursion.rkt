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
