(= (is-member $x Nil)
   False)

(= (is-member $x (:: $y $ys))
   (if (== $x $y)
       True
       (is-member $x $ys)))

(= (append Nil $ys)
   $ys)

(= (append (:: $x $xs) $ys)
   (:: $x (append $xs $ys)))

(= (unique-helper Nil $seen)
   $seen)

(= (unique-helper (:: $x $xs) $seen)
   (if (is-member $x $seen)
       (unique-helper $xs $seen)
       (unique-helper $xs
                      (append $seen (:: $x Nil)))))


(= (unique $list)
   (unique-helper $list Nil))

!(unique Nil)

!(unique (:: 1 Nil))

!(unique (:: 1 (:: 2 (:: 1 (:: 3 Nil)))))

!(unique (:: A (:: B (:: A (:: C (:: B Nil))))))