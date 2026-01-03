(define (imagi-root x)
  (display "Square root (imaginary): ")
  (display (sqrt (abs x)))
  (display "i"))

(display "Enter a number: ")
(newline)

(let ((input (read)))
  (if (number? input)
    (if (>= input 0)
      (begin
        (display "Square root: ")
        (display (sqrt input))
        (newline))
      (imagi-root input))
      (begin
        (display "Invalid input!")
        (newline))))

(newline)

    
