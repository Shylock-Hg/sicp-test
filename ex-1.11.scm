(define (func x)
  (if (< x 3) x
      (+ 
	(func (- x 1)) 
	(* 2 (func (- x 2))) 
	(* 3 (func (- x 3))))))

;(func-iter x 2 1 0) when (>= x 0)
(define (func-iter x f1 f2 f3)
  (cond ((= x 2) f1)
	((= x 1) f2)
	((= x 0) f3)
	(else (func-iter 
		 (- x 1) 
		 (+ f1 (* 2 f2) (* 3 f3))
		 f1
		 f2))))
		 ;(* 2 f1) 
		 ;(* 3 f2)))))


