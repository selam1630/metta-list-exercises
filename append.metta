(= (append Nil $ys)
   $ys)

(= (append (cons $x $xs) $ys)
   (cons $x (append $xs $ys)))


!(append Nil Nil)

; [] + [1,2]
!(append Nil
        (cons 1 (cons 2 Nil)))

; [1,2] + []
!(append
   (cons 1 (cons 2 Nil))
   Nil)

; [1,2,3] + [4,5]
!(append
   (cons 1 (cons 2 (cons 3 Nil)))
   (cons 4 (cons 5 Nil)))

; [A,B] + [C,D]
!(append
   (cons A (cons B Nil))
   (cons C (cons D Nil)))
