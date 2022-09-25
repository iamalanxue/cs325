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
        (t (+ (if (= 'a (car lst)) 1 0)
            (get-a-count (cdr lst))))))

(defun get-a-count (lst)
    (do ((ll lst (cdr ll))
        (n 0 (if (= 'a (car lst)))))))

;; he wants to remove all the nil in the list but the function `remove` leaves the original list untouched

(defun summit (lst)
    (setf lst (remove nil lst))
    (apply #'+ lst))

(defun summit (lst)
    )