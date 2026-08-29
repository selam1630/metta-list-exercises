(= (foldl $f $acc Nil)
   $acc)

(= (foldl $f $acc (cons $x $xs))
   (foldl $f ($f $acc $x) $xs))

(= (add $x $y)
   (+ $x $y))

(= (multiply $x $y)
   (* $x $y))

!(foldl add
         0
         Nil)

!(foldl add
         0
         (cons 1 (cons 2 (cons 3 Nil))))

!(foldl multiply
         1
         (cons 2 (cons 3 (cons 4 Nil))))
