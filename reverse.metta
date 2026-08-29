(= (prepend $list $x)
   (cons $x $list))

(= (reverse $list)
   (foldl prepend Nil $list))

(= (foldl $f $acc Nil)
   $acc)

(= (foldl $f $acc (cons $x $xs))
   (foldl $f ($f $acc $x) $xs))

!(reverse Nil)

!(reverse (cons A Nil))

!(reverse (cons A (cons B (cons C Nil))))

!(reverse (cons 1 (cons 2 (cons 3 (cons 4 Nil)))))
