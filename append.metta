(= (append Nil $ys)
   $ys)

(= (append (:: $x $xs) $ys)
   (:: $x (append $xs $ys)))


!(append Nil Nil)

; [] + [1,2]
!(append Nil
        (:: 1 (:: 2 Nil)))

; [1,2] + []
!(append
   (:: 1 (:: 2 Nil))
   Nil)

; [1,2,3] + [4,5]
!(append
   (:: 1 (:: 2 (:: 3 Nil)))
   (:: 4 (:: 5 Nil)))

; [A,B] + [C,D]
!(append
   (:: A (:: B Nil))
   (:: C (:: D Nil)))