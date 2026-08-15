(= (take 0 $list)
   Nil)
(= (take $n Nil)
   Nil)
(= (take $n (:: $x $xs))
   (if (> $n 0)
       (:: $x (take (- $n 1) $xs))
       Nil))

(= (drop 0 $list)
   $list)

(= (drop $n Nil)
   Nil)

(= (drop $n (:: $x $xs))
   (if (> $n 0)
       (drop (- $n 1) $xs)
       (:: $x $xs)))

(= (numbers)
   (:: 1
       (:: 2
           (:: 3
               (:: 4
                   (:: 5 Nil))))))

!(take 0 (numbers))

!(take 1 (numbers))

!(take 3 (numbers))

!(take 5 (numbers))

!(take 10 (numbers))


; ==========================================
; DROP TESTS
; ==========================================

!(drop 0 (numbers))

!(drop 1 (numbers))

!(drop 3 (numbers))

!(drop 5 (numbers))

!(drop 10 (numbers))