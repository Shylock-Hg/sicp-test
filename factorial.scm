(define (factorial n) (if (= n 1) 1 (* n (factorial (- n 1)))))

(define (fact-iter product counter max-count) 
  (if (>= counter max-count)
      product
      (fact-iter (* counter product) (+ counter 1) max-count)))

(define (factorial n) (fact-iter 1 1 n))

(define (fact-iter product counter)
  (if (<= counter 1)
      product
      (fact-iter (* counter product) (- counter 1))))

(define (factorial n) (fact-iter 1 n))

