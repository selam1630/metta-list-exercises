(= (foldr $f $init Nil)
   $init)

(= (foldr $f $init (:: $x $xs))
   ($f $x (foldr $f $init $xs)))

(= (add $x $y)
   (+ $x $y))

!(foldr add
         0
         Nil)

!(foldr add
         0
         (:: 1 (:: 2 (:: 3 Nil))))
