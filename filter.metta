(= (filter $f Nil)
   Nil)

(= (filter $f (cons $x $xs))
   (if ($f $x)
       (cons $x (filter $f $xs))
       (filter $f $xs)))

(= (greater-than-two $x)
   (> $x 2))

!(filter greater-than-two
   (cons 1
       (cons 2
           (cons 3
               (cons 4
                   (cons 5 Nil))))))
