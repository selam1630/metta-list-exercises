(= (is-member $x Nil)
   False)

(= (is-member $x (cons $y $ys))
   (if (== $x $y)
       True
       (is-member $x $ys)))

(= (append Nil $ys)
   $ys)

(= (append (cons $x $xs) $ys)
   (cons $x (append $xs $ys)))

(= (unique-helper Nil $seen)
   $seen)

(= (unique-helper (cons $x $xs) $seen)
   (if (is-member $x $seen)
       (unique-helper $xs $seen)
       (unique-helper $xs
                      (append $seen (cons $x Nil)))))


(= (unique $list)
   (unique-helper $list Nil))

!(unique Nil)

!(unique (cons 1 Nil))

!(unique (cons 1 (cons 2 (cons 1 (cons 3 Nil)))))

!(unique (cons A (cons B (cons A (cons C (cons B Nil))))))
