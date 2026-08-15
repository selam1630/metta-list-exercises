(= (map $f Nil)
   Nil)
(= (map $f (:: $x $xs))
   (:: ($f $x)
       (map $f $xs)))

(= (square $x)
   (* $x $x))

!(map square Nil)

!(map square
   (:: 1 (:: 2 (:: 3 Nil))))
