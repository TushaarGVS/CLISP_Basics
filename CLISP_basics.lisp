; Initialize variables
(SETQ x 3)
(PRINT x)

; Basic functions
(SQRT 2)
(SETQ apple 'fruit)
(PRINT apple)
(SETQ apple "fruit")
(PRINT apple)
(PRINT "LISP 'PRINT'")
(PRINC "LISP 'PRINC'")
(PRINT (+ 3 4))
; (PRINT ((+ 3 4))) - ERROR: (+ 3 4) is not a function name

; Atoms and lists
(PRINT (ATOM 'A))
(PRINT (NULL ()))
(PRINT (MINUSP -2))
(PRINT (NUMBERP 3))
(PRINT (EQUAL 2 3))
(PRINT (ZEROP 0))

; Conditional
(SETQ a 1)
(SETQ b 2)
(COND 
 ((>= a b) (PRINT a))
 ((< a b) (PRINT b)))

(PRINC "Enter x: ")
(SETQ x (read))
(if (< x 5) (SETQ y (+ x 1)) (SETQ y "Not possible"))
(PRINT y)

; Lists
; CAR returns the first S-Notation in the list
(PRINT (CAR '(A B C)))
(PRINT (CAR '((A) B C)))
(PRINT (CAR '((A B) C)))
(PRINT (CAR '(A B (C D) (E))))
(PRINT (CAAR '((A B)C D)))
; (PRINT (CAR 'A)) - ERROR: A must be a list
; (PRINT (CAR (A B C))) - ERROR: undefined function A

; CDR forms a list with the elements other than the first in the list
(PRINT (CDR '(A B C)))
(PRINT (CDR '(A (B C))))
(PRINT (CDR '((A B) (C))))
(PRINT (CDR '(A B (C D) (E))))
(PRINT (CADR '((A B)C D)))
; (PRINT (CDR 'A)) - ERROR: A must be a list
; (PRINT (CDR (A B C))) - ERROR: undefined function A

(PRINT (CADDAR '((A B (C) D) E)))

; Creating lists
; CONS - constructs a list with arg1 as CAR and arg2 as CDR
(SETQ boys '(jack grey daniel james))
(SETQ girls '(emma anastasia regene elsa))
(PRINT (CONS (CAR boys) (CDR girls)))
(PRINT (CONS 'kathy '(brian nina johnson)))
(PRINT (CONS (CDR boys) (CAR girls))) ; generates a dotted pair
(PRINT (CONS 'A 'B)) ; generates a dotted pair
(PRINT (CONS '(A B) '(C D)))

; LIST - constructs a list with variable nuumber of arguments
(PRINT (LIST (CAR boys) (CDR girls)))
(PRINT (LIST 'kathy '(brian nina johnson)))
(PRINT (LIST (CDR boys) (CAR girls)))
(PRINT (LIST 'A 'B))

; Compare strings
(PRINT (string= "foo" "FOO"))
(PRINT (string= "foo" "foo"))
(PRINT (string> "a" "b"))
(PRINT (string> "b" "a"))

; List operations
(PRINT (APPEND '(A B C) '(D E (F))))
(PRINT (APPEND '(A) '(B) '(C) '(D E (F))))
(PRINT (REVERSE '((A B) C D (E))))
(PRINT (LENGTH '(A B C (D E) (F G (H)))))

; Loops
(LOOP for i from 1 to 3 do (PRINT i))

; Important CONS
(PRINT (CONS 'A '(B C)))
(PRINT (CONS '() '(B C)))
(PRINT (CONS 'A '()))
(PRINT (CONS 'A 'B))

; Functions
(DEFUN factorial(n)
       (if(= n 1) 1 
          (* n (factorial (- n 1)))))
(PRINT (factorial 4))

(DEFUN dumb_sum(a b c)
       (if (AND (= 0 b) (not (= 0 c))) (+ a b c)
           "Not possible"))
(PRINT (dumb_sum 5 0 2))
(PRINT (dumb_sum 5 0 0))
(PRINT (dumb_sum 5 2 2))
(PRINT (dumb_sum 5 2 0))

(DEFUN hypotenuse()
       (let ((a 3) (b 4))
            (SQRT (+ (* a a) (* b b)))))
(PRINT (hypotenuse))

(PRINT ((LAMBDA (x y)
               (+ (* x x) (* y y))) 3 4))

(DEFUN let_check(a)
       (let ((a 3))
            (let ((a 4) (b a)) (PRINT b))))
(let_check 5)

(PRINT ((LAMBDA (a b)
                (if (> a b) a b)) 9 8))

(DEFUN area()
       (PRINC "Enter the radius: ")
       (SETQ r (read))
       (PRINC "Radius: ")
       (WRITE r)
       (SETQ area (* 3.14 r r))
       (PRINC "Area: ")
       (WRITE area))
(area)
       
(DEFUN print_elements(list)
       (SETQ len (LENGTH list))
       (loop for i from 1 to len do
             (PRINT (CAR list))
             (SETQ list (CDR list))))
(print_elements '(emma rachel joanne johnson james))

; More functions and lists
(WRITE-LINE "Hello LISP")
(WRITE (+ (* (/ 9 5) 60) 32)) ; cambridge polish
(WRITE '(+ 2 3))

(PRINT (SUBSTITUTE '9 '4 '(4 4 2 3 1 4 5 6 2 4 5 4)))
(PRINT (COUNT '4 '(4 4 2 3 1 4 5 6 2 4 5 4)))
(PRINT (DELETE '4 '(4 4 2 3 1 4 5 6 2 4 5 4)))
(PRINT (POSITION '4 '(4 4 2 3 1 4 5 6 2 4 5 4)))
(PRINT (COUNT 'f '(a b c d e f)))
