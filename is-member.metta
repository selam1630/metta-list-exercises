(= (is-member $x Nil)
   False)

(= (is-member $x (:: $y $ys))
   (if (== $x $y)
       True
       (is-member $x $ys)))

! (is-member 2 Nil)
! (is-member 2 (:: 2 Nil))
! (is-member 2 (:: 4 Nil))