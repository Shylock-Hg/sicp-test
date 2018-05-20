(define (expt b n) (if (= n 0) 1 (* b (expt b (- n 1)))))

;(expt-iter b n 1)
(define (expt-iter b n it) (if (= n 0) it (expt-iter b (- n 1) (* it b))))

(define (expt-fast b n) 
  (if (= n 0) 
      1 
      (if (even? n) 
	  (square (expt-fast b (/ n 2)))
	  (* b (expt-fast b (- n 1))))))

(define (square x) (* x x))

