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