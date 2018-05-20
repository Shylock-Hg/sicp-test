#! /usr/bin/env guile
!#

(define (good-enough? guess x) (< (abs (- (* guess guess guess) x) ) 0.001))

(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3) )

(define (newton-cube-root guess x) (if (good-enough? guess x) guess (newton-cube-root (improve guess x) x)))
