; R5RS is a scheme language, not very much used today but we need it for csc 335 so here we go
; What makes scheme different than other languages is that variable values do not change. Its all fixed
; ===================================================================================================================================================================
; Data types
"This is a string"    ; strings
'singleWord           ; symbol (a single word)
''|hello there|       ; in order to make a symbol of multiple words, we need to sorround the words with '|...|
#t                    ; boolean true (can also be written as #true)
#f                    ; boolean false (can also be written as #false)

; ===================================================================================================================================================================
; Variables
(define varName 4)    ; the define function defines variables, its parameters are the variable name and its value
                      ; if we were to enter 'varName' on the command line we would get 4

(define integer 5)    ; assign the variable 'integer' the value of 5
(define boolean #t)   ; assign the variable 'boolean' the value of true
(define word "hi")    ; assign the variable 'word' the value of "hi"

; ===================================================================================================================================================================
; Basic maths
(+ 1 2)               ; add 1 by 2                                                   (1 + 2 = 3)
(- 9 3)               ; subtract 9 by 3                                              (9 - 3 = 6)
(* 5 6)               ; multiply 5 by 6                                              (5 * 6 = 30)   
(/ 8 2)               ; divide 8 by 2                                                (8 / 2 = 4)

; More complex maths
(+ (*(- 23 5) 5) 6)   ; subtract 23 by 5, multiply result by 5, add result by 6      (23 - 5 = 18; 18 * 5 = 90; 90 + 6 = 96)

; ===================================================================================================================================================================
; Basic logic
(> 3 1)               ; is 3 > 1? True
(< 5 2)               ; is 5 < 2? False
(= 1 1)               ; is 1 = 1? True
(even? 4)             ; is 4 even? True
(odd? 75)             ; is 75 odd? True
(zero? 0)             ; is 0 = 0? True
(negative? -4)        ; is -4 < 0? True

; Deeper logic
(and (= 2 2) (< 1 2)) ; is 2 = 2 and 1 < 2? Yes, both are true
(or (= 2 2) (< 3 1))  ; is 2 = 2 or 3 < 1? Yes, 2 = 2 

; ===================================================================================================================================================================
; If checks
(if (> 4 2) 'yes 'no) ; if 4 > 2, print yes else print no
                      ; the way if statements are set up is if the condition is true, do the first action else do the second action

(if (< 4 7) (+ 1 1) (- 1 1)) ; in this example, 4 < 7 so the first condition is carried out (1 + 1 = 2)


; Multiple conditions
; In this example the first condtion is read first, 3 > 3 is false, so then we check 3 < 3 which is false, finally we do 3 = 3 is true so same is displayed
(cond ((> 3 3) 'greater)
      ((< 3 3) 'less)
      (else 'same))

; ===================================================================================================================================================================
; Functions
; The define function can also define new functions
(define (mathematical a b c) (* (+ a b) c))   ; to make a function WITH parameters, we type (define (functionName parameter1 parameter2 ...) code)

(define (word) "hello")                       ; to make a function WITHOUT parameters, we type (define (functionName) code)


; Calling functions
;                   ( ************ DO NOT FORGET THE PARENTHESIS ************** )
; To call a function WITH parameters in the terminal bellow, we do (functionName parameter1 parameter2 ...)
; To call a function WITHOUT parameters in the terminal bellow, we do (functionName)

; ===================================================================================================================================================================
; Recursion
(define (countDown x)                   ; function is named countDown and has parameter x
  (cond ((zero? x) 'DONE)               ; if x is 0, say done
        (else (countDown (- x 1)))))    ; else, recursively subtract x by 1

