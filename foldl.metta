(= (foldl $f $acc Nil)
   $acc)

(= (foldl $f $acc (:: $x $xs))
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
         (:: 1 (:: 2 (:: 3 Nil))))

!(foldl multiply
         1
         (:: 2 (:: 3 (:: 4 Nil))))