(= (foldr $f $init Nil)
   $init)

(= (foldr $f $init (cons $x $xs))
   ($f $x (foldr $f $init $xs)))

(= (add $x $y)
   (+ $x $y))

!(foldr add
         0
         Nil)

!(foldr add
         0
         (cons 1 (cons 2 (cons 3 Nil))))
