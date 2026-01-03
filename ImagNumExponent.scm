(define (mod4 pwr)
  (modulo pwr 4))

(display "Enter i to any integer power: ")
(newline)

(define exp (read))

(if (number? exp)
  (if (integer? exp)
    #t
    (begin
      (display "Invalid: Must be a whole number!")
      (newline)
      (exit)))
  (begin
      (display "Invalid: Must be a number!")
      (newline)
      (exit)))
      
(define rem (mod4 exp))
          
(if (= rem 3)
  (display "-i")
  (if (= rem 2)
    (display "-1")
    (if (= rem 1)
      (display "i")

      (display "1"))))

