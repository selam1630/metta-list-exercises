(= (is-member $x Nil)
   False)

(= (is-member $x (cons $y $ys))
   (if (== $x $y)
       True
       (is-member $x $ys)))

! (is-member 2 Nil)
! (is-member 2 (cons 2 Nil))
! (is-member 2 (cons 4 Nil))
