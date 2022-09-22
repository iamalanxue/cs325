(defun greater (a b)
    (if (> a b)
        a
        b))
        
(print (greater 98 10))


(defun has-listp (lst)
    (if (null lst)
        nil
        (if (listp (car lst))
            t
            (has-listp (cdr lst)))))
        
(print (has-listp `(a b c d e)))

(defun print-dots (x)
	(if (eql 0 x)
		`done
		(progn 
			(format t ". ")
			(print-dots (- x 1)))))

(print-dots 10)