(= (filter $f Nil)
   Nil)

(= (filter $f (:: $x $xs))
   (if ($f $x)
       (:: $x (filter $f $xs))
       (filter $f $xs)))

(= (greater-than-two $x)
   (> $x 2))

!(filter greater-than-two
   (:: 1
       (:: 2
           (:: 3
               (:: 4
                   (:: 5 Nil))))))