(in-package :cs325-user)

(defun greater (a b)
    (cond 
        ((> a b) a)
        (t b)))

(defun has-list-p (lst)
    (cond
        ((null lst) nil)
        ((listp (car lst)) t)
        (t (has-list-p (cdr lst)))))

(defun print-dots (x)
    (cond
        ((= 0 x) nil)
        (t
            (format t ".")
            (print-dots (1- x)))))

(defun print-dots (x)
    (do ((i 0 (1+ i)))
        ((= i x) nil)
        (format t ".")))

(defun get-a-count (lst)
    (cond 
        ((null lst) 0)
        (t 
            (+ 
                (if (eql 'a (car lst)) 1 0)
                (get-a-count (cdr lst))))))

(defun get-a-count (lst)
    (do ((ll lst (cdr ll))
        (n 0 
            (if (eql 'a (car ll)) (1+ n) n)))
        ((null ll) n)))

;; he wants to remove all the nil in the list but the function `remove` leaves the original list untouched
;; so he needs to apply add to every element in the lst with nil removed but you can't do setf since that isn't
;; functional programming

(defun summit (lst)
    (apply #'+ (remove nil lst)))

;;here he does not have a condition that breaks the recursion so he would get an infinite loop

(defun summit (lst)
    (cond 
        ((null lst) 0)
        (t 
            (let ((x (car lst)))
                (if (null x)
                    (summit (cdr lst))
                    (+ x (summit (cdr lst))))))))