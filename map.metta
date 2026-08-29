(= (map $f Nil)
   Nil)
(= (map $f (cons $x $xs))
   (cons ($f $x)
       (map $f $xs)))

(= (square $x)
   (* $x $x))

!(map square Nil)

!(map square
   (cons 1 (cons 2 (cons 3 Nil))))
