; An empty list has length 0.
(= (length Nil)
   0)
(= (length (:: $x $xs))
   (+ 1 (length $xs)))

!(length Nil)

!(length (:: A (:: B (:: C Nil))))