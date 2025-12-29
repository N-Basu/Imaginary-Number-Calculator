#lang racket/base
(require racket/string)

(define (mod4 pwr)
  (remainder pwr 4))

(displayln "Enter i to any integer power: ")
(define input (read-line))

(define exp
  (string->number 
    (substring input (add1 (string-index input #\^)))))
  
(define rem (mod4 exp))

(if (= rem 3)
  (displayln "-i")
  (if (= rem 2)
    (displayln "-1")
    (if (= rem 1)
      (displayln "i")
      (displayln "1"))))