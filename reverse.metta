(= (prepend $list $x)
   (:: $x $list))

(= (reverse $list)
   (foldl prepend Nil $list))

(= (foldl $f $acc Nil)
   $acc)

(= (foldl $f $acc (:: $x $xs))
   (foldl $f ($f $acc $x) $xs))

!(reverse Nil)

!(reverse (:: A Nil))

!(reverse (:: A (:: B (:: C Nil))))

!(reverse (:: 1 (:: 2 (:: 3 (:: 4 Nil)))))