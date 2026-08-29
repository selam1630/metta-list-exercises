; An empty list has length 0.
(= (length Nil)
   0)
(= (length (cons $x $xs))
   (+ 1 (length $xs)))

!(length Nil)

!(length (cons A (cons B (cons C Nil))))
